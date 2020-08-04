import 'package:flutter/material.dart';
import 'package:syncapp/pages/LoginScreen.dart';
import 'package:syncapp/pages/RegistrationScreen.dart';
import 'package:syncapp/pages/WelcomeScreen.dart';

void main() => runApp(SyncApp());

class SyncApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
