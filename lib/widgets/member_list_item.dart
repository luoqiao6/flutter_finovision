import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_finovision/utils/fino_colors.dart';
import 'package:flutter_finovision/utils/fino_textStyles.dart';

class MemberListItem extends StatefulWidget {
  //final bool isEven;
  final int index;

  MemberListItem({this.index});

  @override
  State<StatefulWidget> createState() {

    return _MemberListItemState();
  }
}

class _MemberListItemState extends State<MemberListItem> {


  @override
  Widget build(BuildContext context) {
    bool isEven = (widget.index + 1) % 2 == 0 ? true : false;

    String img = 'res/images/img${widget.index + 1}@3x.png';

    return Container(
      padding: EdgeInsets.only(left: 20, right: 17,),
      height: 70,
      //alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isEven ? FinoColors.white : FinoColors.extraBlue245,
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

//                        Container(
//                          width: 50,
//                          height: 50,
//                          decoration: BoxDecoration(
//                            shape: BoxShape.circle,
//                          ),
//                          child: CircleAvatar(
//                            radius: 25,
//                            backgroundColor: FinoColors.extraBlue245,
//                            //foregroundColor: FinoColors.extraBlue245,
//                            //backgroundImage: ,
//                            child: Image.asset('res/images/img1@3x.png'),
//                          ),
//                        ),

          CircleAvatar(
            radius: 25,
            backgroundColor: FinoColors.extraBlue245,
            //foregroundColor: FinoColors.extraBlue245,
            //backgroundImage: ,
            child: Image.asset(img),//'res/images/img1@3x.png'
          ),

          Padding(
            padding: EdgeInsets.only(right: 15),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text('Lisa Johnson', style: FinoTextStyles.montserratSemiBold17DarkBlue,),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 4),
              ),

              Row(
                children: <Widget>[

                  Container(
                    child: Text('FV001', style: FinoTextStyles.montserratSemiBold12Blue161,),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: 18),
                  ),

                  Container(
                    child: Text('180025000', style: FinoTextStyles.montserratSemiBold12Blue161,),
                  ),
                ],
              ),

            ],
          ),

          Expanded(
            child: Container(
              //padding: EdgeInsets.only(right: 25),
              alignment: Alignment.centerRight,
              child: Text(
                String.fromCharCode(Icons.chevron_right.codePoint),
                style: TextStyle(
                  fontFamily: Icons.account_circle.fontFamily,
                  fontSize: 24,
                  color: FinoColors.darkBlue68,
                ),
              ),
            ),
          ),


        ],
      ),
    );



  }
}