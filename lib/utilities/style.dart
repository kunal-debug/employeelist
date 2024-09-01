import 'package:flutter/material.dart';

import 'color.dart';
import 'dimesion.dart';

class Sty {
  TextStyle microText = TextStyle(
    letterSpacing: 0.5,
    color: Clr().black,
    fontSize: 12.0,
  );
  TextStyle smallText = TextStyle(
    letterSpacing: 0.5,
    color: Clr().black,
    fontSize: 14.0,
  );
  TextStyle mediumText = TextStyle(
    letterSpacing: 0.5,
    color: Clr().black,
    fontSize: 16.0,
  );
  TextStyle mediumBoldText = TextStyle(
    letterSpacing: 0.5,
    color: Clr().black,
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
  );
  TextStyle largeText = TextStyle(
    letterSpacing: 0.5,
    color: Clr().black,
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
  );
  TextStyle extraLargeText = TextStyle(
    letterSpacing: 0.5,
    color: Clr().black,
    fontSize: 24.0,
    fontWeight: FontWeight.w100,
  );

  InputDecoration textFieldOutlineDarkStyle = InputDecoration(
    filled: true,
    fillColor: Clr().white,
    contentPadding: EdgeInsets.symmetric(
      horizontal: Dim().d14,
      vertical: Dim().d12,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Clr().backgrndClr,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Clr().backgrndClr,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Clr().red,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Clr().red,
      ),
    ),
    errorStyle: TextStyle(
      fontFamily: 'Regular',
      letterSpacing: 0.5,
      color: Clr().red,
      fontSize: 14.0,
    ),
  );
}
