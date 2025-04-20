import 'package:flutter/material.dart';

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 650;

bool isTab(BuildContext context) =>
    MediaQuery.of(context).size.width < 1300 &&
    MediaQuery.of(context).size.width >= 650;

bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300;

const Size desktopSize = Size(1366, 768);
const Size tabletSize = Size(800, 1280);
const Size mobileSize = Size(390, 844);
