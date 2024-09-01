import 'package:employee/utilities/color.dart';
import 'package:employee/utilities/dimesion.dart';
import 'package:employee/utilities/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class emplyeePage extends StatefulWidget {
  const emplyeePage({super.key});

  @override
  State<emplyeePage> createState() => _emplyeePageState();
}

class _emplyeePageState extends State<emplyeePage> {
  var details;

  getSession() {
    setState(() {
      details = Get.arguments;
    });
    print(details);
  }

  @override
  void initState() {
    // TODO: implement initState
    getSession();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Clr().backgrndClr,
        leading: Icon(
          Icons.arrow_back,
          color: Clr().white,
        ),
        title: Text(
          '${details['first_name']} ${details['surname']}',
          style: Sty().mediumText.copyWith(color: Clr().white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Dim().d20,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/logo.jpg',
                height: Dim().d250,
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: Dim().d20,
            ),
            Text(
              '${details['first_name']} ${details['surname']}',
              style: Sty().mediumBoldText.copyWith(color: Clr().black),
            ),
            SizedBox(
              height: Dim().d12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Dim().d12),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Excepteur sint occaecat cupidatat non proident, sunt in culpaqui officia deserunt mollit anim id est laborum.Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullamvarius, turpis et commodo pharetra, est eros bibendum elit,nec luctus magna felis sollicitudin mauris.",
                textAlign: TextAlign.center,
                style: Sty().smallText.copyWith(
                      color: Clr().black,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
