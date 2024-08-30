import 'package:flutter/material.dart';

import '../utilities/color.dart';
import '../utilities/style.dart';

class homePageScreen extends StatefulWidget {
  const homePageScreen({super.key});

  @override
  State<homePageScreen> createState() => _homePageScreenState();
}

class _homePageScreenState extends State<homePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Clr().backgrndClr,
        title: Text(
          'Employee',
          style: Sty().mediumText.copyWith(color: Clr().white),
        ),
        centerTitle: true,
      ),
    );
  }
}
