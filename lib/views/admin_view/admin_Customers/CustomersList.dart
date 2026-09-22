import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guadalajarav2/utils/tools.dart';
import '../../../widgets/custom/Custom_Customers/CustomTableCustomers.dart';
import '../../Delivery_Certificate/Controllers/DAO.dart';
import '../../Delivery_Certificate/adminClases/CustomerClass.dart';
import '../admin_DeliverCertificate/LoadingData.dart';

class CustomersList extends StatefulWidget {
  const CustomersList({super.key});

  @override
  State<CustomersList> createState() => _CustomersListState();
}

class _CustomersListState extends State<CustomersList> {
  List<CustomersClass> customers = [];
  List<Uint8List> images = [];
  bool isAllCustomersLoaded = false;
  @override
  void initState() {
    super.initState();
    getCustomers();
  }

  @override
  Widget build(BuildContext context) {
    return !isAllCustomersLoaded
        ? LoadingData()
        : CustomTableCustomers(customers: customers, isOC: false);
  }

  getCustomers() async {
    try {
      List<CustomersClass> customers1 = await DataAccessObject.getCustomer();
      if (!mounted) return;
      setState(() {
        customers = customers1;
        isAllCustomersLoaded = true;
      });
    } catch (e, st) {
      print('[CustomersList] getCustomers error: $e\n$st');
      if (!mounted) return;
      setState(() {
        isAllCustomersLoaded = true;
      });
      PopupError(context);
    }
  }
}
//convertListToInt(customers[i].logo!)
