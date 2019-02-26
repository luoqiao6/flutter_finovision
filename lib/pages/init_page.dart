import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_finovision/utils/fino_colors.dart';


class InitPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _InitPageState();
  }
}

class _InitPageState extends State<InitPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            color: FinoColors.blue202,
          ),

          Container(
            child: Image.asset('res/images/background_img.png'),
          ),

          Container(
            child: SvgPicture.asset(
              'res/images/logo_cover.svg',
              width: 115.75,
              //height: 401,
            ),
          ),

        ],
      ),
    );
  }
}