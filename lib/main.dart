import 'package:flutter/material.dart';
import 'package:manager_money_provider_sqlite/view/getting_started_screen.dart';
import 'package:manager_money_provider_sqlite/view/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manager Money App',
      debugShowCheckedModeBanner: false,
      home: GettingStartedScreen(),
      routes: {
        LoginScreen.routeName: (context) =>LoginScreen(),
      },
    );
  }
}
