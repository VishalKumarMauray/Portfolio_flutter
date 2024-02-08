import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/home/home.dart';
import 'package:portfolio/utils/constants.dart';
import 'dart:html' as html;

void main() {
  html.window.onPopState.listen((html.PopStateEvent event) {
    event.preventDefault();
    html.window.history.back();
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1366, 768),
        useInheritedMediaQuery: true,
        builder: (context, _) {
          return MaterialApp(
            title: 'CRM',
            debugShowCheckedModeBanner: false,
            builder: (context, widget) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!,
              );
            },
            home: MyHomePage(),
          );
        });
  }
}
