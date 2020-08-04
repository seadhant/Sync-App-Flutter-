import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:syncapp/pages/LoginScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,width: 375.0,height: 812.0,allowFontScaling: true);
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFEF5A53), Color(0xFFF48348)])),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: Image.asset('images/logo.png'),
                          height: ScreenUtil().setHeight(100),
                        ),
                        Container(
                          child: Image.asset('images/logo_label.png'),
                          height: ScreenUtil().setWidth(80),
                        ),
                        Container(
                          child: Text(
                            'the meeting app',
                            textAlign: TextAlign.center,
                            style: TextStyle( fontFamily: 'Quicksand'
                            ,fontSize: ScreenUtil().setSp(20,allowFontScalingSelf: true), fontStyle: FontStyle.normal,fontWeight: FontWeight.w300, color: Colors.white.withOpacity(0.6))
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                //SizedBox(height: 120.0,),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 10.0),
                      child: Material(
                        elevation: 0.0,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, LoginScreen.id);
                          },
                          minWidth: ScreenUtil().setWidth(296),
                          height: ScreenUtil().setHeight(56),
                          child: Text(
                            'Get Started',
                            style: TextStyle(fontFamily: 'Quicksand',
                                color: Color(0xFF393E41 ),fontSize: ScreenUtil().setSp(20,allowFontScalingSelf: true),
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
