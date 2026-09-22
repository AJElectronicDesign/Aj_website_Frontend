// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guadalajarav2/views/Delivery_Certificate/admin_OC/AddOC.dart';
import 'package:guadalajarav2/views/admin_view/AdminWidgets/Title.dart';
import 'package:guadalajarav2/views/Delivery_Certificate/widgets/Texts.dart';
import 'package:guadalajarav2/views/Delivery_Certificate/Entregas/EditEntrega.dart';
import '../../../utils/colors.dart';
import '../../../utils/tools.dart';
import '../widgets/Customs_OC/CustomDesplegableTable.dart';
import '../Controllers/DAO.dart';
import '../adminClases/CertificadoEntregaClass.dart';
import '../adminClases/OrdenCompraClass.dart';
import '../../admin_view/admin_DeliverCertificate/LoadingData.dart';
import '../../../Popups.dart';
import 'ChooseCompany.dart';
import '../Entregas/AddEntrega.dart';

class OCList extends StatefulWidget {
  String customerName;
  int id_customer;
  OCList({super.key, required this.id_customer, required this.customerName});

  @override
  State<OCList> createState() => _OCListState();
}

class _OCListState extends State<OCList> {
  List<OrdenCompraClass> OC = [];
  List<ClassCertificadoEntrega> Entrega = [];
  List<List<ClassCertificadoEntrega>> EntregasGlobal = [];
  String? date_start;
  bool isLoading = true;
  bool areThereData = false;
  @override
  void initState() {
    super.initState();
    getOC();
  }

  getOC() async {
    try {
      List<OrdenCompraClass> OC1 =
          await DataAccessObject.selectOCCustomer(widget.id_customer);
      if (!mounted) return;
      if (OC1.isEmpty) {
        setState(() {
          OC = OC1;
          areThereData = false;
          isLoading = false;
        });
        return;
      }
      setState(() {
        OC = OC1;
        areThereData = true;
      });
      await getEntrega();
    } catch (e, st) {
      print('[OCList] getOC error: $e\n$st');
      if (!mounted) return;
      setState(() {
        areThereData = false;
        isLoading = false;
      });
      PopupError(context);
    }
  }

  getEntrega() async {
    try {
      // Una sola llamada por cliente en lugar de getEntrega global + N selects
      final allByCustomer =
          await DataAccessObject.selectEntregaByCustomer(widget.id_customer);
      final Map<int, List<ClassCertificadoEntrega>> byOc = {};
      for (final entrega in allByCustomer) {
        final idOc = entrega.id_OC;
        if (idOc == null) continue;
        byOc.putIfAbsent(idOc, () => <ClassCertificadoEntrega>[]).add(entrega);
      }

      final List<List<ClassCertificadoEntrega>> grouped = [];
      for (final oc in OC) {
        grouped.add(byOc[oc.id_OC] ?? <ClassCertificadoEntrega>[]);
      }

      if (!mounted) return;
      setState(() {
        EntregasGlobal = grouped;
        isLoading = false;
      });
    } catch (e, st) {
      print('[OCList] getEntrega error: $e\n$st');
      if (!mounted) return;
      setState(() {
        isLoading = false;
      });
      PopupError(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: teal.add(black, 0.3),
          title:
              TitleH1(context, "${widget.customerName} Delivery Certificates"),
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChooseCompany()));
              },
              icon: Icon(
                Icons.chevron_left,
                color: Colors.white,
              )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        AddOC(id_customer: widget.id_customer)));
          },
          foregroundColor: Colors.white,
          backgroundColor: teal,
          shape: const CircleBorder(),
          child: Icon(Icons.add),
        ),
        body: isLoading
            ? LoadingData()
            : areThereData
                ? Container(
                    margin: EdgeInsets.only(top: 15),
                    child: CustomDesplegable(
                      id_customer: widget.id_customer,
                      EntregasGlobal: EntregasGlobal,
                      OC: OC,
                      customerName: widget.customerName,
                    ),
                  )
                : NoData());
  }

  Widget NoData() {
    return Center(
      child: Text("No Data"),
    );
  }

  Widget ListOC() {
    return isLoading
        ? LoadingData()
        : ListView.builder(
            itemCount: OC.length,
            itemBuilder: (context, i) => ExpansionTile(
                  title: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              child: Column(
                            children: [
                              Text(
                                'Orden de Compra',
                                style: fieldText,
                              ),
                              Text('${OC[i].id_OC}'),
                            ],
                          )),
                          Container(
                              child: Column(
                            children: [
                              Text(
                                'Fecha de inicio',
                                style: fieldText,
                              ),
                              Text('${OC[i].fecha_inicio}'),
                            ],
                          )),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'Acciones',
                                  style: fieldText,
                                ),
                                Row(
                                  children: [
                                    //Add Button
                                    IconButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AddEntrega(
                                                          id_OC: OC[i].id_OC!,
                                                          id_customer: widget
                                                              .id_customer)));
                                        },
                                        icon: Icon(Icons.add)),
                                    //Delete Button
                                    IconButton(
                                        onPressed: () =>
                                            confirmationDeleteCustomer(
                                                context,
                                                OC[i].id_OC,
                                                "oc",
                                                OCList(
                                                    id_customer:
                                                        widget.id_customer,
                                                    customerName:
                                                        widget.customerName)),
                                        icon: Icon(Icons.delete)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.teal,
                        width: MediaQuery.of(context).size.width,
                        height: 2,
                      )
                    ],
                  ),
                  children: [
                    DataTable(
                        sortColumnIndex: 0,
                        sortAscending: true,
                        columns: <DataColumn>[
                          DataColumn(
                              label: Text(
                            'Certificado',
                            style: fieldText,
                            textAlign: TextAlign.center,
                          )),
                          DataColumn(
                              label: Text(
                            '    Fecha',
                            style: fieldText,
                            textAlign: TextAlign.center,
                          )),
                          DataColumn(
                              label: Text(
                            '          Accion',
                            style: fieldText,
                            textAlign: TextAlign.center,
                          )),
                        ],
                        rows: EntregasGlobal[i]
                            .map<DataRow>((ClassCertificadoEntrega entrega) {
                          return DataRow(cells: <DataCell>[
                            DataCell(Text(entrega.certificadoEntrega!)),
                            DataCell(Text(entrega.Fecha!)),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                //Edit Button
                                IconButton(
                                    onPressed: () => EditEntrega(
                                        id_customer: widget.id_customer,
                                        id_OC: OC[i].id_OC!,
                                        id_entrega:
                                            entrega.certificadoEntrega!),
                                    icon: Icon(Icons.edit)),
                                //Delete Button
                                IconButton(
                                    onPressed: () => confirmationDeleteCustomer(
                                        context,
                                        entrega.id_Entrega,
                                        "entrega",
                                        OCList(
                                            id_customer: widget.id_customer,
                                            customerName: widget.customerName)),
                                    icon: Icon(Icons.delete)),
                                IconButton(
                                    onPressed: () {},
                                    // confirmationDeleteCustomer(context, id_customer),
                                    icon: Icon(Icons.download)),
                              ],
                            )),
                          ]);
                        }).toList()),
                  ],
                ));
  }
}
