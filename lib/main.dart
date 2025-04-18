import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:portfolio/app/app.dart';
import 'package:portfolio/theme/controller/theme_provider.dart';

void main() {
  // html.window.onPopState.listen((html.PopStateEvent event) {
  //   event.preventDefault();
  //   html.window.history.back();
  // });
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}
