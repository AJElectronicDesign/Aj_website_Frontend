// ignore_for_file: must_be_immutable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';
import 'package:guadalajarav2/extensions/str_extension.dart';
import 'package:guadalajarav2/utils/tools.dart';
import 'package:guadalajarav2/views/Delivery_Certificate/adminClases/CustomerClass.dart';
import 'package:guadalajarav2/views/admin_view/admin_DeliverCertificate/LoadingData.dart';

import '../../../utils/colors.dart';
import '../../../views/Delivery_Certificate/Controllers/DAO.dart';
import '../../../views/Delivery_Certificate/adminClases/OrdenCompraClass.dart';
import 'CustomTableCustomerTile.dart';

class CustomTableCustomers extends StatefulWidget {
  bool isOC;
  List<CustomersClass> customers;
  CustomTableCustomers(
      {super.key, required this.customers, required this.isOC});

  @override
  State<CustomTableCustomers> createState() => _CustomTableCustomersState();
}

class _CustomTableCustomersState extends State<CustomTableCustomers> {
  static const int _pageSize = 10;

  Map<String, int> headers = {'logo': 1, 'name': 3, 'actions': 2};

  final List<Icon> statusList = [
    Icon(Fontelico.spin3, color: Colors.orange),
    Icon(FontAwesome.ok, color: Colors.green)
  ];
  final Icon _placeholderStatus =
      Icon(Icons.hourglass_empty, color: Colors.grey);

  bool isLoading = true;
  List<Icon> statusListPerCustomer = [];
  final ScrollController _scrollController = ScrollController();
  int _visibleCount = _pageSize;
  bool _loadingMore = false;
  final Set<int> _statusLoadedIndexes = {};

  @override
  void initState() {
    super.initState();
    _visibleCount = _initialVisibleCount(widget.customers.length);
    _scrollController.addListener(_onScroll);
    loadData();
  }

  @override
  void didUpdateWidget(covariant CustomTableCustomers oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.customers, widget.customers) ||
        oldWidget.customers.length != widget.customers.length) {
      _visibleCount = _initialVisibleCount(widget.customers.length);
      _statusLoadedIndexes.clear();
      loadData();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  int _initialVisibleCount(int total) =>
      total <= _pageSize ? total : _pageSize;

  void _onScroll() {
    if (!_scrollController.hasClients || _loadingMore) return;
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 160) {
      _loadMore();
    }
  }

  void _loadMore() {
    if (_visibleCount >= widget.customers.length) return;
    final previous = _visibleCount;
    setState(() {
      _loadingMore = true;
      _visibleCount =
          (_visibleCount + _pageSize).clamp(0, widget.customers.length);
    });
    if (widget.isOC) {
      _loadStatusForRange(previous, _visibleCount);
    }
    Future.microtask(() {
      if (mounted) setState(() => _loadingMore = false);
    });
  }

  Future<void> loadData() async {
    try {
      statusListPerCustomer = List.generate(
        widget.customers.length,
        (_) => _placeholderStatus,
      );
      // Mostrar lista de inmediato (parche UI: no esperar status de todos)
      if (mounted) {
        setState(() => isLoading = false);
      }
      if (widget.isOC) {
        await _loadStatusForRange(0, _visibleCount);
      }
    } catch (e, st) {
      print('[CustomTableCustomers] loadData error: $e\n$st');
      if (!mounted) return;
      setState(() => isLoading = false);
      PopupError(context);
    }
  }

  Future<void> _loadStatusForRange(int from, int to) async {
    final end = to.clamp(0, widget.customers.length);
    for (var i = from; i < end; i++) {
      if (_statusLoadedIndexes.contains(i)) continue;
      _statusLoadedIndexes.add(i);
      try {
        final icon = await _statusForCustomer(widget.customers[i]);
        if (!mounted) return;
        setState(() {
          if (i < statusListPerCustomer.length) {
            statusListPerCustomer[i] = icon;
          }
        });
      } catch (e) {
        print('[CustomTableCustomers] status error index=$i: $e');
      }
    }
  }

  Future<Icon> _statusForCustomer(CustomersClass customer) async {
    final ocs =
        await DataAccessObject.selectOCCustomer(customer.id_customer);
    if (ocs.isEmpty) {
      return _placeholderStatus;
    }

    bool isAllDelivered = true;
    for (final oc in ocs) {
      int totalProducts = 0;
      // Preferir status ya guardado en la OC para evitar N+1 de productos
      if (oc.status != null) {
        totalProducts = oc.status!;
      } else {
        final products =
            await DataAccessObject.selectProductPerOC(oc.id_OC);
        for (final p in products) {
          totalProducts += p.cantidad ?? 0;
        }
      }
      if (totalProducts != (oc.cantidad ?? 0)) {
        isAllDelivered = false;
        break;
      }
    }
    return isAllDelivered ? statusList[1] : statusList[0];
  }

  @override
  Widget build(BuildContext context) {
    final total = widget.customers.length;
    final visible = _visibleCount.clamp(0, total);
    final hasMore = visible < total;

    return widget.customers.isEmpty
        ? Center(child: Text("No Data"))
        : isLoading
            ? LoadingData()
            : Column(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: teal.add(black, 0.3),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(5)),
                    ),
                    child: Row(
                      children: headers.entries
                          .map(
                            (e) => Expanded(
                              flex: e.value,
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border(
                                    left: e.key != 'id'
                                        ? BorderSide(
                                            color: white,
                                          )
                                        : BorderSide.none,
                                  ),
                                ),
                                child: AutoSizeText(
                                  e.key.split('_').join(' ').toTitle(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: white),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(5)),
                      ),
                      child: ListView.separated(
                        controller: _scrollController,
                        itemCount: visible + (hasMore ? 1 : 0),
                        itemBuilder: (context, i) {
                          if (i >= visible) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16),
                              child: Center(
                                child: _loadingMore
                                    ? const SizedBox(
                                        width: 22,
                                        height: 22,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                        ),
                                      )
                                    : TextButton(
                                        onPressed: _loadMore,
                                        child: Text(
                                          'Cargar más ($visible / $total)',
                                          style: TextStyle(color: teal),
                                        ),
                                      ),
                              ),
                            );
                          }
                          final status = i < statusListPerCustomer.length
                              ? statusListPerCustomer[i]
                              : _placeholderStatus;
                          return CustomTableCustomerTile(
                            status: status,
                            widget.customers[i],
                            attributesFlex: headers,
                            isOdd: i % 2 != 0,
                            isOC: widget.isOC,
                          );
                        },
                        separatorBuilder: (context, index) =>
                            Container(height: 2),
                      ),
                    ),
                  )
                ],
              );
  }
}
