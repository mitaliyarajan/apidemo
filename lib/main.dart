import 'package:apidemo/Controller.dart';
import 'package:apidemo/first.dart';
import 'package:apidemo/second.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'apidemo.dart';
void main() {

  runApp(
    ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        home: ChangeNotifierProvider(
          create: (context) => Controller(),
          child: apidemo(),
        ),
      );
    },)
  );
}



