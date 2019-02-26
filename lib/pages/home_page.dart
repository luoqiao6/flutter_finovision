import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_finovision/utils/fino_colors.dart';
import 'package:flutter_finovision/utils/fino_textStyles.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: FinoColors.extraBlue245,
      body: Center(
        child: Stack(
          children: <Widget>[
            /// 蓝色背景
            Column(
              children: <Widget>[
                Container(
                  height: 201,
                  color: FinoColors.blue177,
                ),

                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),

                Container(
                  width: 327.46,
                  height: 162.2,
                  decoration: BoxDecoration(
                    color: FinoColors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(19),
                    ),
                  ),

                  child: Column(
                    children: <Widget>[

                      Padding(
                        padding: EdgeInsets.only(top: 40),
                      ),

                      Container(
                        child: Text('FinoVision Dashboard', style: FinoTextStyles.montserratMedium18DarkBlue,),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),

                      /// First Row
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Container(
                            width: 21.2,
                            height: 21.2,
                            decoration: BoxDecoration(
                              color: FinoColors.green205,
                              shape: BoxShape.circle,
                            ),
                          ),

                          Padding(
                              padding: EdgeInsets.only(right: 10),
                          ),

                          Container(
                            child: Text('AVAILABLE', style: FinoTextStyles.montserratBold11Blue161,),
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 24),
                          ),

                          Container(
                            width: 21.2,
                            height: 21.2,
                            decoration: BoxDecoration(
                              color: FinoColors.yellow250,
                              shape: BoxShape.circle,
                            ),

                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 10),
                          ),

                          Container(
                            child: Text('DISBUSSED', style: FinoTextStyles.montserratBold11Blue161,),
                          ),


                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 12),
                      ),

                      /// Second Row
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Container(
                            width: 21.2,
                            height: 21.2,
                            decoration: BoxDecoration(
                              color: FinoColors.red255,
                              shape: BoxShape.circle,
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 10),
                          ),

                          Container(
                            child: Text('INTEREST', style: FinoTextStyles.montserratBold11Blue161,),
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 24),
                          ),

                          Container(
                            width: 21.2,
                            height: 21.2,
                            decoration: BoxDecoration(
                              color: FinoColors.blue253,
                              shape: BoxShape.circle,
                            ),

                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 10),
                          ),

                          Container(
                            child: Text('PENULTY', style: FinoTextStyles.montserratBold11Blue161,),
                          ),


                        ],
                      ),

                    ],
                  ),

                ),


              ],
            ),



            ///
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25),

              child: Column(
                children: <Widget>[

                  /// Header
                  Container(
                    height: 80,
                    padding: EdgeInsets.only(top: 30),
                    child: Stack(
                      children: <Widget>[

                        Container(
                          alignment: Alignment.centerLeft,
                          child: SvgPicture.asset(
                            'res/images/menu_icon.svg',
                            width: 25.63,
                            //height: 401,
                            color: FinoColors.white,
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          child: Text('HOME', style: FinoTextStyles.montserratSemiBold18White,),
                        ),

                      ],
                    ),
                  ),

                  ///

                ],
              ),

            ),


          ],
        ),
      ),
    );
  }
}