import 'package:flutter/material.dart';
import 'package:taxonapp/dash_board_screen.dart';

class PaymentScreen extends StatelessWidget {
  static const String routeName = '/payments';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
      ),
      drawer: AppDrawer(),
      body: Center(child: Text('Paymnts')),
    );
  }
}
