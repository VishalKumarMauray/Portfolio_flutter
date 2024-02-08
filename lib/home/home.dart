import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/about/about.dart';
import 'package:portfolio/contact%20me/contact.dart';
import 'package:portfolio/personal%20project/personal_project.dart';
import 'package:portfolio/utils/constants.dart';
import 'dart:html' as html;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ValueNotifier<bool> buttonHover1 = ValueNotifier(false);
  ValueNotifier<bool> buttonHover2 = ValueNotifier(false);
  ValueNotifier<bool> buttonHover3 = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          height: 700,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff1d1d1f),
                Color(0xff000000),
                // Colors.amber,
                // Colors.amber,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Stack(
            children: [
              Opacity(
                opacity: 0.3,
                child: Image.asset(ImageConstant.bg1),
              ),
              Positioned(
                bottom: 100,
                left: 0,
                right: 0,
                child: Container(
                  height: 500,
                  width: double.infinity,
                  color: Colors.transparent,
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Welcome",
                              style: GoogleFonts.sevillana(
                                textStyle: const TextStyle(
                                  fontSize: 75,
                                  color: ColorConstant.golden,
                                ),
                              ),
                            ),
                            Text(
                              "Game begins with the ''hello world''!",
                              style: GoogleFonts.sevillana(
                                textStyle: const TextStyle(
                                  fontSize: 35,
                                  color: ColorConstant.golden,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(),
                          Row(
                            children: [
                              ValueListenableBuilder(
                                  valueListenable: buttonHover1,
                                  builder: (context, bool showText, _) {
                                    if (showText == false) {
                                      return const SizedBox();
                                    }
                                    return AnimatedDefaultTextStyle(
                                      duration: const Duration(milliseconds: 500),
                                      style: showText
                                          ? GoogleFonts.sevillana(
                                              textStyle: const TextStyle(
                                              fontSize: 35.0,
                                              color: ColorConstant.golden,
                                            ))
                                          : const TextStyle(fontSize: 0.0, color: Colors.transparent),
                                      child: const Text("Personal projects   "),
                                    );
                                  }),
                              GestureDetector(
                                onTap: () {
                                  html.window.history.pushState({}, 'Personal project', '/personal-project');
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => PersonalProject(),
                                    ),
                                  );
                                },
                                child: MouseRegion(
                                  onEnter: (event) => buttonHover1.value = true,
                                  onExit: (event) => buttonHover1.value = false,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          color: Colors.white,
                                          offset: Offset(2, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const CircleAvatar(
                                      radius: 30,
                                      backgroundColor: ColorConstant.golden,
                                      child: Icon(
                                        Icons.diversity_2_rounded,
                                        size: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              ValueListenableBuilder(
                                  valueListenable: buttonHover2,
                                  builder: (context, bool showText, _) {
                                    if (showText == false) {
                                      return const SizedBox();
                                    }
                                    return AnimatedDefaultTextStyle(
                                      duration: const Duration(milliseconds: 500),
                                      style: showText
                                          ? GoogleFonts.sevillana(
                                              textStyle: const TextStyle(
                                              fontSize: 35.0,
                                              color: ColorConstant.golden,
                                            ))
                                          : const TextStyle(fontSize: 0.0, color: Colors.transparent),
                                      child: const Text("About me   "),
                                    );
                                  }),
                              GestureDetector(
                                onTap: () {
                                  html.window.history.pushState({}, 'About', '/about');
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => About(),
                                    ),
                                  );
                                },
                                child: MouseRegion(
                                  onEnter: (event) => buttonHover2.value = true,
                                  onExit: (event) => buttonHover2.value = false,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          color: Colors.white,
                                          offset: Offset(2, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const CircleAvatar(
                                      radius: 30,
                                      backgroundColor: ColorConstant.golden,
                                      child: Icon(
                                        Icons.school_outlined,
                                        size: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              ValueListenableBuilder(
                                  valueListenable: buttonHover3,
                                  builder: (context, bool showText, _) {
                                    if (showText == false) {
                                      return const SizedBox();
                                    }
                                    return AnimatedDefaultTextStyle(
                                      duration: const Duration(milliseconds: 500),
                                      style: showText
                                          ? GoogleFonts.sevillana(
                                              textStyle: const TextStyle(
                                              fontSize: 35.0,
                                              color: ColorConstant.golden,
                                            ))
                                          : const TextStyle(fontSize: 0.0, color: Colors.transparent),
                                      child: const Text("Contact me   "),
                                    );
                                  }),
                              GestureDetector(
                                onTap: () {
                                  html.window.history.pushState({}, 'Contact', '/contact');
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Contact(),
                                    ),
                                  );
                                },
                                child: MouseRegion(
                                  onEnter: (event) => buttonHover3.value = true,
                                  onExit: (event) => buttonHover3.value = false,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          color: Colors.white,
                                          offset: Offset(2, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: const CircleAvatar(
                                      radius: 30,
                                      backgroundColor: ColorConstant.golden,
                                      child: Icon(
                                        Icons.support_agent,
                                        size: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
