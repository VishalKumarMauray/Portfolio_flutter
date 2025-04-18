import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../Presentation/home/home.dart';
import '../theme/controller/theme_provider.dart';
import '../theme/view/light_theme.dart';
import '../utils/string_constant.dart';

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
        designSize: Size(
          data.size.width,
          data.size.height,
        ),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, _) {
          return MaterialApp(
            title: Strings.appName,
            debugShowCheckedModeBanner: false,
            theme: AppLightTheme.themeData,
            darkTheme: ThemeData.dark(),
            themeMode: themeProvider.themeMode,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
