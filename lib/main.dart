import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:portfolio/app/app.dart';

void main() {
  html.window.onPopState.listen((html.PopStateEvent event) {
    event.preventDefault();
    html.window.history.back();
  });
  runApp(const MyApp());
}
