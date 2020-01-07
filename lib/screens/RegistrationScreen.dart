import 'package:flutter/material.dart';
import 'package:taxonapp/dash_board_screen.dart';

class RegistrationScreen extends StatelessWidget {
  static const String routeName = '/registraion';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      drawer: AppDrawer(),
      body: Center(child: Text('Registration Module Begin')),
    );
  }
}
