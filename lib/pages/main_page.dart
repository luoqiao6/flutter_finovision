import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_finovision/utils/fino_colors.dart';
import 'package:flutter_finovision/utils/fino_textStyles.dart';

class MainPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: FinoColors.extraBlue245,
      body: Center(
        child: Stack(
          children: <Widget>[
            /// 主要内容
            Column(
              children: <Widget>[

                /// 蓝色背景

//                Container(
//                  height: 201,
//                  color: FinoColors.blue177,
//                ),


                Padding(
                  padding: EdgeInsets.only(top: 278),
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
                        padding: EdgeInsets.only(top: 46),
                      ),

                      Container(
                        child: Text('FinoVision Dashboard', style: FinoTextStyles.montserratMedium18DarkBlue,),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 18),
                      ),

                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                          /// 左边
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              ///
                              Row(
                                children: <Widget>[

                                  Container(
                                    width: 21.2,
                                    height: 21.2,
                                    decoration: BoxDecoration(
                                      color: FinoColors.cyan,
                                      shape: BoxShape.circle,
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                  ),

                                  Container(
                                    child: Text('AVAILABLE', style: FinoTextStyles.montserratBold11Blue161,),
                                  ),

                                ],
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 8),
                              ),

                              ///
                              Row(
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

                                ],
                              )

                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.only(right: 40),
                          ),

                          /// 右边
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Row(
                                children: <Widget>[
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
                                padding: EdgeInsets.only(top: 8),
                              ),

                              Row(
                                children: <Widget>[
                                  Container(
                                    width: 21.2,
                                    height: 21.2,
                                    decoration: BoxDecoration(
                                      color: FinoColors.blue226,
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
                              )


                            ],
                          ),


                        ],
                      ),

                    ],
                  ),

                ),

                Padding(
                  padding: EdgeInsets.only(top: 26),
                ),

               Column(
                 //crossAxisAlignment: CrossAxisAlignment.center,
                 //mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       /// MEBERS
                       Container(
                         width: 150,
                         height: 108,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           color: FinoColors.white,

                           borderRadius: BorderRadius.all(
                             Radius.circular(19),
                           ),
                         ),

                         child: Column(
                           //crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,

                           children: <Widget>[

                             Container(
                               child: SvgPicture.asset(
                                 'res/images/member_icon.svg',
                                 width: 48,
                                 height: 33.6,
                               ),
                             ),

                             Padding(
                               padding: EdgeInsets.only(top: 20),
                             ),
                             Container(
                               child: Text('MEBERS', style: FinoTextStyles.montserratSemiBold14DarkBlue,),
                             ),

                           ],
                         ),
                       ),

                       Padding(
                         padding: EdgeInsets.only(left: 27),
                       ),

                       /// PASSBOOK
                       Container(
                         width: 150,
                         height: 108,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           color: FinoColors.white,

                           borderRadius: BorderRadius.all(
                             Radius.circular(19),
                           ),
                         ),

                         child: Column(
                           //crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,

                           children: <Widget>[

                             Container(
                               child: SvgPicture.asset(
                                 'res/images/passbook_red.svg',
                                 width: 48,
                                 height: 33.6,
                               ),
                             ),

                             Padding(
                               padding: EdgeInsets.only(top: 20),
                             ),
                             Container(
                               child: Text('PASSBOOK', style: FinoTextStyles.montserratSemiBold14DarkBlue,),
                             ),

                           ],
                         ),
                       ),
                     ],
                   ),

                   Padding(
                     padding: EdgeInsets.only(top: 24),
                   ),

                   Row(
                     //crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       /// REPORT
                       Container(
                         width: 150,
                         height: 108,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           color: FinoColors.white,

                           borderRadius: BorderRadius.all(
                             Radius.circular(19),
                           ),
                         ),

                         child: Column(
                           //crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,

                           children: <Widget>[

                             Container(
                               child: SvgPicture.asset(
                                 'res/images/report_green.svg',
                                 width: 48,
                                 height: 33.6,
                               ),
                             ),

                             Padding(
                               padding: EdgeInsets.only(top: 20),
                             ),
                             Container(
                               child: Text('REPORT', style: FinoTextStyles.montserratSemiBold14DarkBlue,),
                             ),

                           ],
                         ),
                       ),

                       Padding(
                         padding: EdgeInsets.only(left: 27),
                       ),

                       /// TRANSACTION
                       Container(
                         width: 150,
                         height: 108,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           color: FinoColors.white,

                           borderRadius: BorderRadius.all(
                             Radius.circular(19),
                           ),
                         ),

                         child: Column(
                           //crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.center,

                           children: <Widget>[

                             Container(
                               child: SvgPicture.asset(
                                 'res/images/history_icon.svg',
                                 width: 48,
                                 height: 33.6,
                               ),
                             ),

                             Padding(
                               padding: EdgeInsets.only(top: 10),
                             ),
                             Container(
                               child: Column(
                                 children: <Widget>[
                                   Text('TRANSACTION', style: FinoTextStyles.montserratSemiBold14DarkBlue,),
                                   Text('HISTORY', style: FinoTextStyles.montserratSemiBold14DarkBlue,),
                                 ],
                               ),
                             ),

                           ],
                         ),
                       ),
                     ],
                   ),

                 ],
               ),



              ],
            ),



            ///顶部的 标题栏
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
                            //color: FinoColors.white,
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          child: Text('HOME', style: FinoTextStyles.montserratSemiBold18DarkBlue,),
                        ),

                      ],
                    ),
                  ),

                  ///

                ],
              ),

            ),

            /// 中间的圆形
            Container(
              padding: EdgeInsets.only(top: 236, ),
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
//                Padding(
//                  padding: EdgeInsets.only(top: 246),
//                  child: ,
//                ),

                  Container(
                    width: 75,
                    height: 75,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: FinoColors.extraBlue245,
                      shape: BoxShape.circle,
                    ),
                  ),

//                  Container(
//                    padding: EdgeInsets.only(top: 30),
//                    child: Image.asset('res/images/circle_shadow@3x.png'),
//                  ),

                  Container(
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: FinoColors.red255,
//                      gradient: LinearGradient(
//                          begin: Alignment.topCenter,
//                          end: Alignment.bottomCenter,
//                          colors: [
//                            FinoColors.blue253,
//                            FinoColors.blue247,
//                          ]
//                      ),
                      color: FinoColors.green205,
                      shape: BoxShape.circle,
                    ),
                    
                    child: Text('39', style: FinoTextStyles.montserratRegular22White,),
                    
                  ),


                ],
              ),
            ),


            /// Logo 图形
            Stack(
              //alignment: Alignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 115),
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                      'res/images/logo_preamble.svg',
                      width: 159,
                      //height: 401,
                      //color: FinoColors.white,
                    ),
                  ),
                ),


//                Padding(
//                  padding: EdgeInsets.only(top: 70),
//                  child: Container(
//                    alignment: Alignment.topCenter,
//                    child: Image.asset('res/images/logo_shadow@3x.png'),
//                  ),
//                ),

              ],
            ),




          ],
        ),
      ),
    );
  }
}