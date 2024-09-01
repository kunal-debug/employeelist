


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/homepage.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 3));
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaler: const TextScaler.linear(1.0)),
          child: child!,
        );
      },
      home: homePageScreen(),
    ),
  );
}

