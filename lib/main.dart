import 'package:flutter/material.dart';
import 'package:flutter_finovision/pages/home_page.dart';
import 'package:flutter_finovision/pages/init_page.dart';


void main() => runApp(FinoApp());

class FinoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),//InitPage(),
    );
  }
}

