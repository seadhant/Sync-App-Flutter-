import 'dart:ui';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class Colours {

  const Colours();

  static const Color loginGradientStart = const Color(0xFFEF5A53);
  static const Color loginGradientEnd = const Color(0xFFF48348);

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}