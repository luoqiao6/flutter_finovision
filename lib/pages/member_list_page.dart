import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_finovision/utils/fino_colors.dart';
import 'package:flutter_finovision/utils/fino_textStyles.dart';
import 'package:flutter_finovision/widgets/left_menu.dart';
import 'package:flutter_finovision/widgets/member_list_item.dart';
import 'package:flutter_finovision/widgets/fino_bottom_bar.dart';

class MemberListPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return MemberListPageState();
  }
}

class MemberListPageState extends State<MemberListPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: FinoColors.extraBlue245,
      drawer: LeftMenu(),
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
                            print('menu');
                            //Navigator.of(context).pushReplacementNamed('/drawer');
                            //Scaffold.of(context).openDrawer();
                            _scaffoldKey.currentState.openDrawer();
                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: SvgPicture.asset(
                              'res/images/menu_icon.svg',
                              width: 25.63,
                              //color: FinoColors.white,
                            ),
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          child: Text('HOME', style: FinoTextStyles.montserratSemiBold18DarkBlue,),
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
                              String.fromCharCode(Icons.add.codePoint),
                              style: TextStyle(
                                fontFamily: Icons.account_circle.fontFamily,
                                fontSize: 24,
                                color: FinoColors.white,
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

                /// Search
                Container(
                  width: 296,
                  height: 47,
                  decoration: BoxDecoration(
                    color: FinoColors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(24),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[

                      Expanded(
                        child: TextField(
                          controller: TextEditingController(),
                          style: FinoTextStyles.montserratRegular17Blue161,
                          decoration: InputDecoration(
                            hintText: 'search',
                            hintStyle: FinoTextStyles.montserratRegular17Blue161,
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 25, top: 0,),
                          ),
                        ),
                      ),



                      Padding(
                        padding: EdgeInsets.only(right: 17),
                        child: Container(

                          child: Text(
                            String.fromCharCode(Icons.search.codePoint),
                            style: TextStyle(
                              fontFamily: Icons.account_circle.fontFamily,
                              fontSize: 24,
                              color: FinoColors.blue244,
                            ),
                          ),

                        ),
                      ),


                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),

                Container(
                  padding: EdgeInsets.only(left: 43, right: 45,),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index){

                      return Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: MemberListItem(index: index,),
                      );

                    },
                  ),
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