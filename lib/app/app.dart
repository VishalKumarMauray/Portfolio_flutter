import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/theme/view/dark_theme.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:provider/provider.dart';

import '../Presentation/home/home.dart';
import '../theme/controller/theme_provider.dart';
import '../theme/view/light_theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final MediaQueryData data = MediaQuery.of(context);

    return MediaQuery(
      data: data.copyWith(
        textScaler: const TextScaler.linear(
          1,
        ),
      ),
      child: ScreenUtilInit(
        designSize: isDesktop(context)
            ? desktopSize
            : isTab(context)
                ? tabletSize
                : mobileSize,
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, _) {
          return MaterialApp(
            title: "Portfolio",
            debugShowCheckedModeBanner: false,
            theme: AppLightTheme.themeData,
            darkTheme: AppDarkTheme.themeData,
            themeMode: themeProvider.themeMode,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
