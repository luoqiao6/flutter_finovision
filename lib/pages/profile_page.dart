import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_finovision/utils/fino_colors.dart';
import 'package:flutter_finovision/utils/fino_textStyles.dart';
import 'package:flutter_finovision/widgets/left_menu.dart';
import 'package:flutter_finovision/widgets/fino_bottom_bar.dart';

class ProfilePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: FinoColors.extraBlue245,
      body: Stack(
        children: <Widget>[

          Center(
            child: Column(
              children: <Widget>[
                /// Header
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Container(
                    height: 80,
                    padding: EdgeInsets.only(top: 30),
                    child: Stack(
                      children: <Widget>[

                        GestureDetector(
                          onTap: () {
                            print('');
                            Navigator.of(context).pushReplacementNamed('/member_list');

                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              String.fromCharCode(Icons.arrow_back.codePoint),
                              style: TextStyle(
                                fontFamily: Icons.arrow_back.fontFamily,
                                fontSize: 30,
                                color: FinoColors.blue255,
                              ),
                            ),
//
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          child: Text('PROFILE', style: FinoTextStyles.montserratSemiBold18DarkBlue,),
                        ),

                        Container(
                          alignment: AlignmentDirectional.centerEnd,
                          padding: EdgeInsets.only(right: 14),
                          child: Container(
                            width: 48,
                            height: 48,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: FinoColors.green205,
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              String.fromCharCode(Icons.edit.codePoint),
                              style: TextStyle(
                                fontFamily: Icons.edit.fontFamily,
                                fontSize: 24,
                                color: FinoColors.blue255,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),

                /// Profile
                Column(
                  children: <Widget>[

                    Container(
                      width: 156,
                      height: 156,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: FinoColors.white,
                        shape: BoxShape.circle,
                      ),

                      child: CircleAvatar(
                        //radius: 50,//
                        maxRadius:63,
                        backgroundColor: FinoColors.white,
                        backgroundImage: AssetImage('res/images/head_img.jpg'),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 40),
                    ),

                    /// Name
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text('NAME:', style: FinoTextStyles.montserratSemiBold13DarkBlue,),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 6),
                          ),

                          Container(
                            child: Text('John Vinshon', style: FinoTextStyles.montserratBold13Blue161,),
                          ),
                        ],
                      ),
                    ),


                    /// PHONE
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text('PHONE:', style: FinoTextStyles.montserratSemiBold13DarkBlue,),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 6),
                          ),

                          Container(
                            child: Text('+91 7977726859', style: FinoTextStyles.montserratBold13Blue161,),
                          ),
                        ],
                      ),
                    ),


                    /// Email
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text('Email:', style: FinoTextStyles.montserratSemiBold13DarkBlue,),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 6),
                          ),

                          Container(
                            child: Text('ramandesigns9@gmail.com', style: FinoTextStyles.montserratBold13Blue161,),
                          ),
                        ],
                      ),
                    ),


                    /// MEMBER ID
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text('MEMBER ID:', style: FinoTextStyles.montserratSemiBold13DarkBlue,),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 6),
                          ),

                          Container(
                            child: Text('FV0001', style: FinoTextStyles.montserratBold13Blue161,),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),


              ],
            ),
          ),




          FinoBottomBar(),
        ],
      ),
    );
  }
}