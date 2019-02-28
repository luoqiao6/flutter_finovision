import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_finovision/utils/fino_colors.dart';
import 'package:flutter_finovision/utils/fino_textStyles.dart';


class LeftMenu extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LeftMenuState();
  }
}

class LeftMenuState extends State<LeftMenu> {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 306,
      height: 677,
      decoration: BoxDecoration(
        color: FinoColors.white,
        borderRadius:BorderRadius.only(
          topRight: Radius.circular(13),
          bottomRight: Radius.circular(13),
        ),
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Padding(
            padding: EdgeInsets.only(left: 30, right: 13),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 19,),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 18, right: 12),
                  child: Text('MENU', style: FinoTextStyles.montserratSemiBold18DarkBlue,),
                ),

                ListView(
                  shrinkWrap: true,
                  children: <Widget>[

                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/main');
                      },
                      child: Container(
                        height: 56,
                        padding: EdgeInsets.only(left: 18, right: 12),
                        child: Row(
                          children: <Widget>[

                            Container(
                              child: Text(
                                String.fromCharCode(Icons.home.codePoint),
                                style: TextStyle(
                                  fontFamily: Icons.home.fontFamily,
                                  fontSize: 24,
                                  color: FinoColors.blue213,
                                ),
                              ),
                            ),

//                      SvgPicture.asset(
//                        'res/images/home_icon.svg',
//                        width: 20,
//                        //height: 33.6,
//                      ),

                            Padding(
                              padding: EdgeInsets.only(right: 23),
                            ),

                            Container(
                              child: Text('Home', style: FinoTextStyles.montserratMedium18Blue143,),
                            ),

                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: SvgPicture.asset(
                                  'res/images/more_icon.svg',
                                  width: 8,
                                  //height: 33.6,
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),


                    /// Members
                    Container(
                      height: 56,
                      padding: EdgeInsets.only(left: 18, right: 12),
                      child: Row(
                        children: <Widget>[

                          Container(
                            child: Text(
                              String.fromCharCode(Icons.group.codePoint),
                              style: TextStyle(
                                fontFamily: Icons.account_circle.fontFamily,
                                fontSize: 24,
                                color: FinoColors.blue213,
                              ),
                            ),
                          ),

//                      SvgPicture.asset(
//                        'res/images/members_icon.svg',
//                        width: 22,
//                        //height: 33.6,
//                      ),

                          Padding(
                            padding: EdgeInsets.only(right: 21),
                          ),

                          Container(
                            child: Text('Members', style: FinoTextStyles.montserratMedium18Blue143,),
                          ),

                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: SvgPicture.asset(
                                'res/images/more_icon.svg',
                                width: 8,
                                //height: 33.6,
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),


                    /// Passbook
                    Container(
                      height: 56,
                      padding: EdgeInsets.only(left: 18, right: 12),
                      child: Row(
                        children: <Widget>[

                          Container(
                            child: Text(
                              String.fromCharCode(Icons.import_contacts.codePoint),
                              style: TextStyle(
                                fontFamily: Icons.account_circle.fontFamily,
                                fontSize: 24,
                                color: FinoColors.blue213,
                              ),
                            ),
                          ),

//                      SvgPicture.asset(
//                        'res/images/book_icon.svg',
//                        width: 20,
//                        //height: 33.6,
//                      ),

                          Padding(
                            padding: EdgeInsets.only(right: 23),
                          ),

                          Container(
                            child: Text('Passbook', style: FinoTextStyles.montserratMedium18Blue143,),
                          ),

                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: SvgPicture.asset(
                                'res/images/more_icon.svg',
                                width: 8,
                                //height: 33.6,
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),

                    /// Login
                    Container(
                      height: 56,
                      padding: EdgeInsets.only(left: 18, right: 12),
                      child: Row(
                        children: <Widget>[

                          //Icon(Icons.account_circle,size: 20.0,color: FinoColors.blue251,),

                          Container(
                            child: Text(
                              String.fromCharCode(Icons.account_circle.codePoint),
                              style: TextStyle(
                                fontFamily: Icons.account_circle.fontFamily,
                                fontSize: 24,
                                color: FinoColors.blue213,
                              ),
                            ),
                          ),

//                      SvgPicture.asset(
//                        'res/images/account_icon.svg',
//                        width: 20,
//                        //height: 20,
//                      ),

                          Padding(
                            padding: EdgeInsets.only(right: 23),
                          ),

                          Container(
                            child: Text('Login', style: FinoTextStyles.montserratMedium18Blue143,),
                          ),

                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: SvgPicture.asset(
                                'res/images/more_icon.svg',
                                width: 8,
                                //height: 33.6,
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),

                    /// Support
                    Container(
                      height: 56,
                      padding: EdgeInsets.only(left: 18, right: 12),
                      decoration: BoxDecoration(
                        color:FinoColors.blue251,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[

                          Container(
                            child: Text(
                              String.fromCharCode(Icons.help_outline.codePoint),
                              style: TextStyle(
                                fontFamily: Icons.account_circle.fontFamily,
                                fontSize: 24,
                                color: FinoColors.blue213,
                              ),
                            ),
                          ),

//                      SvgPicture.asset(
//                        'res/images/help_icon.svg',
//                        width: 20,
//                        //height: 20,
//                      ),

                          Padding(
                            padding: EdgeInsets.only(right: 23),
                          ),

                          Container(
                            child: Text('Support', style: FinoTextStyles.montserratMedium18Blue143,),
                          ),

                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: SvgPicture.asset(
                                'res/images/more_icon.svg',
                                width: 8,
                                //height: 33.6,
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),


                    /// Signup
                    Container(
                      height: 56,
                      padding: EdgeInsets.only(left: 18, right: 12),
                      decoration: BoxDecoration(
                        //color:FinoColors.blue251,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[


                          Container(
                            child: Text(
                              String.fromCharCode(Icons.person.codePoint),
                              style: TextStyle(
                                fontFamily: Icons.account_circle.fontFamily,
                                fontSize: 24,
                                color: FinoColors.blue213,
                              ),
                            ),
                          ),

//                      SvgPicture.asset(
//                        'res/images/user_icon.svg',
//                        width: 20,
//                        //height: 20,
//                      ),

                          Padding(
                            padding: EdgeInsets.only(right: 23),
                          ),

                          Container(
                            child: Text('Signup', style: FinoTextStyles.montserratMedium18Blue143,),
                          ),

                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: SvgPicture.asset(
                                'res/images/more_icon.svg',
                                width: 8,
                                //height: 33.6,
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),

                  ],
                ),


              ],
            ),
          ),

          Expanded(
            child: Container(),
          ),

          /// SHOW TUTORIAL
          Container(
            height: 61,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: FinoColors.blue255,
              borderRadius:BorderRadius.only(
                //topRight: Radius.circular(13),
                bottomRight: Radius.circular(13),
              ),
            ),
            child: Row(
              children: <Widget>[

                Expanded(
                  child: Container(
                    //alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 48),
                    child: Text('SHOW TUTORIAL', style: FinoTextStyles.montserratSemiBold18White,),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(right: 25),
                  alignment: Alignment.centerRight,
                  child: Text(
                    String.fromCharCode(Icons.chevron_right.codePoint),
                    style: TextStyle(
                      fontFamily: Icons.account_circle.fontFamily,
                      fontSize: 24,
                      color: FinoColors.white,
                    ),
                  ),
                ),

              ],
            ),
          ),




        ],
      )



    );
  }
}
