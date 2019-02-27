import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_finovision/utils/fino_colors.dart';
import 'package:flutter_finovision/utils/fino_textStyles.dart';

class FinoBottomBar extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _FinoBottomBarState();
  }
}

class _FinoBottomBarState extends State<FinoBottomBar> {

  @override
  Widget build(BuildContext context) {

    return Positioned(
      bottom: 0,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          decoration: BoxDecoration(
              color: FinoColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )
          ),

          child: Stack(
            children: <Widget>[

              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.only(top: 35),
                  child: Image.asset('res/images/bottom_bar_shadow.png'),
                ),
              ),

              /// 蓝色底
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 82,
                  height: 53,
                  //alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: FinoColors.blue255,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(13),
                      bottomRight: Radius.circular(13),
                    ),
                  ),
                ),
              ),

              Row(
                children: <Widget>[

                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        String.fromCharCode(Icons.home.codePoint),
                        style: TextStyle(
                          fontFamily: Icons.home.fontFamily,
                          fontSize: 24,
                          color: FinoColors.blue255,
                        ),
                      ),
                    ),

                  ),

                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        String.fromCharCode(Icons.group.codePoint),
                        style: TextStyle(
                          fontFamily: Icons.group.fontFamily,
                          fontSize: 24,
                          color: FinoColors.white,
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        String.fromCharCode(Icons.import_contacts.codePoint),
                        style: TextStyle(
                          fontFamily: Icons.import_contacts.fontFamily,
                          fontSize: 24,
                          color: FinoColors.blue255,
                        ),
                      ),
                    ),
                  ),

                ],
              ),




            ],
          )

      ),
    );
  }
}