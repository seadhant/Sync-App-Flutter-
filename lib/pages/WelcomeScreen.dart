import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:syncapp/pages/LoginScreen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                          height: 100.0,
                        ),
                        Container(
                          child: Image.asset('images/logo_label.png'),
                          height: 80.0,
                        ),
                        Container(
                          child: Text(
                            'the meeting app',
                            textAlign: TextAlign.center,
                            style: TextStyle( fontFamily: 'Quicksand'
                            ,fontSize: 20.0, fontStyle: FontStyle.normal,fontWeight: FontWeight.w300, color: Colors.white.withOpacity(0.6))
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
                          minWidth: 296.0,
                          height: 56.0,
                          child: Text(
                            'Get Started',
                            style: TextStyle(fontFamily: 'Quicksand',
                                color: Color(0xFF393E41 ),fontSize: 20.0,
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
