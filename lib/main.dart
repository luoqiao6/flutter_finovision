import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_finovision/utils/fino_colors.dart';
import 'package:flutter_finovision/pages/home_page.dart';
import 'package:flutter_finovision/pages/init_page.dart';
import 'package:flutter_finovision/pages/main_page.dart';
//import 'package:flutter_finovision/widgets/left_menu.dart';
import 'package:flutter_finovision/pages/member_list_page.dart';
import 'package:flutter_finovision/pages/profile_page.dart';

void main() => runApp(FinoApp());

class FinoApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _FinoAppState();
  }
}

class _FinoAppState extends State<FinoApp> {
  final _streamController = StreamController<String>();

  @override
  void initState() {
    _streamController.add('init');
    Future.delayed(Duration(seconds: 20), () {
      _streamController.add('login');
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StreamBuilder(
        stream: _streamController.stream,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {

          if (snapshot.data == 'init') {
            return Stack(
              children: <Widget>[
                InitPage(),

                Center(
                  child: CircularProgressIndicator(
                    //value: 4,
                    backgroundColor: FinoColors.white,
                  ),
                ),

              ],
            );
          } else {
            return HomePage();
          }

        }
      ),
      routes: {
        '/init': (BuildContext context) => InitPage(),
        '/home': (BuildContext context) => HomePage(),
        '/main': (BuildContext context) => MainPage(),
        '/member_list': (BuildContext context) => MemberListPage(),
        '/profile': (BuildContext context) => ProfilePage(),
      },//HomePage(),//InitPage(),
    );
  }
}
