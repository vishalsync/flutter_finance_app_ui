import 'package:finance_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
