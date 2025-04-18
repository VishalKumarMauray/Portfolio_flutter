import 'package:flutter/material.dart';
import 'package:portfolio/Presentation/header/header.dart';
import 'package:portfolio/utils/assets_constant.dart';
import 'package:provider/provider.dart';

import '../../theme/controller/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double imageBOpacity = 1;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Assets.portfolioIcon,
                    height: 150,
                    width: 150,
                  ),
                  Stack(
                    children: [
                      AnimatedOpacity(
                        opacity: imageBOpacity,
                        duration: const Duration(milliseconds: 300),
                        child: Image.asset(
                          Assets.sun,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Positioned(
                        top: 12,
                        child: GestureDetector(
                          onTap: () {
                            setState(() async {
                              if (imageBOpacity == 1) {
                                imageBOpacity = 0;
                                await Future.delayed(
                                    const Duration(milliseconds: 100));
                                themeProvider.toggleTheme(true);
                              } else {
                                imageBOpacity = 1;
                                await Future.delayed(
                                    const Duration(milliseconds: 100));
                                themeProvider.toggleTheme(false);
                              }
                            });
                          },
                          child: Image.asset(
                            Assets.cloud,
                            height: 100,
                            width: 120,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Header(),
            ],
          ),
        ),
      ),
    );
  }
}
