import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncapp/components/constants.dart';
import 'package:syncapp/components/roundButton.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Image.asset('images/login_logo.png'),
            height: 207.0,width: 170.0,
          ),
          SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsets.only(left: 44.0,right: 35.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.left,
              onChanged: (value) {
                email = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Email Address',hintStyle: TextStyle(fontFamily: 'Quicksand',fontSize: 16.0,fontWeight: FontWeight.w300)),
            ),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 44.0,right: 35.0),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              textAlign: TextAlign.left,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Password',hintStyle: TextStyle(fontFamily: 'Quicksand',fontSize: 16.0,fontWeight: FontWeight.w300)),
            ),
          ),
          RaisedGradientButton(
            width: 296.0,
              child: Text(
                'Login',
                  style: TextStyle(fontFamily: 'Quicksand',
                      color: Colors.white,fontSize: 16.0,
                      fontWeight: FontWeight.w400
                  ),
              ),
              gradient: LinearGradient(
                colors: <Color>[Color(0xFFEF5A53), Color(0xFFF48348)],
              ),
              onPressed: (){
                print('button clicked');
              }
          ),
//
          FlatButton( onPressed: (){},
              child: Text('Forgot password?',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Quicksand',fontSize: 14.0,fontWeight: FontWeight.w500,color: Color(0xFF393E41 )))),
          SizedBox(height: 50.0,),
          FlatButton( onPressed: (){},
              child: Text('Create an new account',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Quicksand',fontSize: 16.0,fontWeight: FontWeight.w700,color: Color(0xFF393E41 ))))
        ],
      ),
    );
  }
}
