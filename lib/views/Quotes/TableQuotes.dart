// ignore_for_file: must_be_immutable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:guadalajarav2/extensions/str_extension.dart';
import 'package:guadalajarav2/views/Quotes/Clases/QuoteClass.dart';

import '../../../utils/colors.dart';
import '../Delivery_Certificate/adminClases/CustomerClass.dart';
import 'TileQuotes.dart';

class TableQuotes extends StatefulWidget {
  CustomersClass customer;
  bool isOC;
  List<QuoteClass> quotes;
  TableQuotes(
      {super.key,
      required this.quotes,
      required this.customer,
      required this.isOC});

  @override
  State<TableQuotes> createState() => _TableQuotesState();
}

class _TableQuotesState extends State<TableQuotes> {
  static const int _pageSize = 10;

  Map<String, int> headers = {'Quote': 2, 'Type': 2, 'Date': 2, 'actions': 2};
  final ScrollController _scrollController = ScrollController();
  int _visibleCount = _pageSize;
  bool _loadingMore = false;

  @override
  void initState() {
    super.initState();
    _visibleCount = _initialVisibleCount(widget.quotes.length);
    _scrollController.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(covariant TableQuotes oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.quotes, widget.quotes) ||
        oldWidget.quotes.length != widget.quotes.length) {
      _visibleCount = _initialVisibleCount(widget.quotes.length);
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
    if (_visibleCount >= widget.quotes.length) return;
    setState(() {
      _loadingMore = true;
      _visibleCount = (_visibleCount + _pageSize).clamp(0, widget.quotes.length);
    });
    Future.microtask(() {
      if (mounted) setState(() => _loadingMore = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final total = widget.quotes.length;
    final visible = _visibleCount.clamp(0, total);
    final hasMore = visible < total;

    return widget.quotes.isEmpty
        ? Center(child: Text("No Data"))
        : Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: teal.add(black, 0.3),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
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
                          padding: const EdgeInsets.symmetric(vertical: 16),
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
                      return TileQuotes(
                        customer: widget.customer,
                        quote: widget.quotes[i],
                        attributesFlex: headers,
                        isOdd: i % 2 != 0,
                        isOC: widget.isOC,
                      );
                    },
                    separatorBuilder: (context, index) => Container(height: 2),
                  ),
                ),
              )
            ],
          );
  }
}
