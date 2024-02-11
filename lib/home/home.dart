import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: MediaQuery.of(context).size.width > 1024
          ? Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff1d1d1f),
                    Color(0xff000000),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Opacity(
                      opacity: 0.2,
                      child: Image.asset(
                        ImageConstant.video,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 500,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 40,
                          ),
                          SizedBox(
                            width: 0.7.sw,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "HELLO !",
                                  style: GoogleFonts.crimsonText(
                                    textStyle: const TextStyle(
                                      shadows: [
                                        Shadow(
                                          color: ColorConstant.golden,
                                          offset: Offset(4, 4),
                                          blurRadius: 3.0,
                                        ),
                                      ],
                                      color: ColorConstant.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "I AM VISHAL KUMAR MAURAY",
                                  style: GoogleFonts.crimsonText(
                                    textStyle: const TextStyle(
                                      shadows: [
                                        Shadow(
                                          color: ColorConstant.golden,
                                          offset: Offset(4, 4),
                                          blurRadius: 3.0,
                                        ),
                                      ],
                                      color: ColorConstant.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Experienced mobile developer with a passion for creating intuitive and dynamic applications. Proficient in Cross-Platform development, with expertise in cross-platform (Flutter, React Native) frameworks. Basic knowledge in UI/UX design principles, agile methodologies, and delivering high-quality, scalable solutions. Strong problem-solving abilities and a collaborative team player committed to continuous learning and innovation.",
                                  style: GoogleFonts.heebo(
                                    textStyle: const TextStyle(
                                      color: ColorConstant.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 250,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: ColorConstant.golden,
                                      width: 1,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: ColorConstant.white,
                                        blurRadius: 3,
                                        spreadRadius: 1,
                                        offset: Offset(2, 2),
                                      )
                                    ],
                                    color: ColorConstant.golden,
                                  ),
                                  child: GestureDetector(
                                    child: const Text(
                                      'Download Resume',
                                      style: TextStyle(
                                        color: ColorConstant.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const SizedBox(),
                              SizedBox(
                                height: 50,
                                child: ValueListenableBuilder(
                                    valueListenable: buttonHover1,
                                    builder: (context, bool showText, _) {
                                      if (showText == false) {
                                        return const SizedBox();
                                      }
                                      return AnimatedDefaultTextStyle(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        style: showText
                                            ? GoogleFonts.sevillana(
                                                textStyle: const TextStyle(
                                                fontSize: 35.0,
                                                color: ColorConstant.golden,
                                              ))
                                            : const TextStyle(
                                                fontSize: 0.0,
                                                color: Colors.transparent),
                                        child:
                                            const Text("Personal projects   "),
                                      );
                                    }),
                              ),
                              SizedBox(
                                height: 50,
                                child: ValueListenableBuilder(
                                    valueListenable: buttonHover2,
                                    builder: (context, bool showText, _) {
                                      if (showText == false) {
                                        return const SizedBox();
                                      }
                                      return AnimatedDefaultTextStyle(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        style: showText
                                            ? GoogleFonts.sevillana(
                                                textStyle: const TextStyle(
                                                fontSize: 35.0,
                                                color: ColorConstant.golden,
                                              ))
                                            : const TextStyle(
                                                fontSize: 0.0,
                                                color: Colors.transparent),
                                        child: const Text("About me   "),
                                      );
                                    }),
                              ),
                              SizedBox(
                                height: 50,
                                child: ValueListenableBuilder(
                                    valueListenable: buttonHover3,
                                    builder: (context, bool showText, _) {
                                      if (showText == false) {
                                        return const SizedBox();
                                      }
                                      return AnimatedDefaultTextStyle(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        style: showText
                                            ? GoogleFonts.sevillana(
                                                textStyle: const TextStyle(
                                                fontSize: 35.0,
                                                color: ColorConstant.golden,
                                              ))
                                            : const TextStyle(
                                                fontSize: 0.0,
                                                color: Colors.transparent),
                                        child: const Text("Contact me   "),
                                      );
                                    }),
                              ),
                              const SizedBox(),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                              border: Border.all(color: ColorConstant.golden),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const SizedBox(),
                                SizedBox(
                                  height: 50,
                                  child: GestureDetector(
                                    onTap: () {
                                      html.window.history.pushState({},
                                          'Personal project',
                                          '/personal-project');
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PersonalProject(),
                                        ),
                                      );
                                    },
                                    child: MouseRegion(
                                      onEnter: (event) =>
                                          buttonHover1.value = true,
                                      onExit: (event) =>
                                          buttonHover1.value = false,
                                      child: const Icon(
                                        Icons.diversity_2_rounded,
                                        size: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  child: GestureDetector(
                                    onTap: () {
                                      html.window.history
                                          .pushState({}, 'About', '/about');
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const About(),
                                        ),
                                      );
                                    },
                                    child: MouseRegion(
                                      onEnter: (event) =>
                                          buttonHover2.value = true,
                                      onExit: (event) =>
                                          buttonHover2.value = false,
                                      child: const Icon(
                                        Icons.school_outlined,
                                        size: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  child: GestureDetector(
                                    onTap: () {
                                      html.window.history
                                          .pushState({}, 'Contact', '/contact');
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const Contact(),
                                        ),
                                      );
                                    },
                                    child: MouseRegion(
                                      onEnter: (event) =>
                                          buttonHover3.value = true,
                                      onExit: (event) =>
                                          buttonHover3.value = false,
                                      child: const Icon(
                                        Icons.support_agent,
                                        size: 32,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          : MediaQuery.of(context).size.width > 600
              ? Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff1d1d1f),
                        Color(0xff000000),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Opacity(
                          opacity: 0.2,
                          child: Image.asset(
                            ImageConstant.video,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 100,
                        left: 0,
                        right: 0,
                        child: SingleChildScrollView(
                          child: Container(
                            height: 500,
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 40,
                                ),
                                SizedBox(
                                  width: 0.7.sw,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "HELLO !",
                                        style: GoogleFonts.crimsonText(
                                          textStyle: const TextStyle(
                                            shadows: [
                                              Shadow(
                                                color: ColorConstant.golden,
                                                offset: Offset(4, 4),
                                                blurRadius: 3.0,
                                              ),
                                            ],
                                            color: ColorConstant.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                       SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        "I AM VISHAL KUMAR MAURAY",
                                        style: GoogleFonts.crimsonText(
                                          textStyle: const TextStyle(
                                            shadows: [
                                              Shadow(
                                                color: ColorConstant.golden,
                                                offset: Offset(4, 4),
                                                blurRadius: 3.0,
                                              ),
                                            ],
                                            color: ColorConstant.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30.h,
                                      ),
                                      Text(
                                        "Experienced mobile developer with a passion for creating intuitive and dynamic applications. Proficient in Cross-Platform development, with expertise in cross-platform (Flutter, React Native) frameworks. Basic knowledge in UI/UX design principles, agile methodologies, and delivering high-quality, scalable solutions. Strong problem-solving abilities and a collaborative team player committed to continuous learning and innovation.",
                                        style: GoogleFonts.heebo(
                                          textStyle: const TextStyle(
                                            color: ColorConstant.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                       SizedBox(
                                        height: 20.h,
                                      ),
                                      Container(
                                        width: 250,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: ColorConstant.golden,
                                            width: 1,
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: ColorConstant.white,
                                              blurRadius: 3,
                                              spreadRadius: 1,
                                              offset: Offset(2, 2),
                                            )
                                          ],
                                          color: ColorConstant.golden,
                                        ),
                                        child: GestureDetector(
                                          child: const Text(
                                            'Download Resume',
                                            style: TextStyle(
                                              color: ColorConstant.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 2,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const SizedBox(),
                                    SizedBox(
                                      height: 50,
                                      child: ValueListenableBuilder(
                                          valueListenable: buttonHover1,
                                          builder: (context, bool showText, _) {
                                            if (showText == false) {
                                              return const SizedBox();
                                            }
                                            return AnimatedDefaultTextStyle(
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              style: showText
                                                  ? GoogleFonts.sevillana(
                                                      textStyle:
                                                          const TextStyle(
                                                      fontSize: 35.0,
                                                      color:
                                                          ColorConstant.golden,
                                                    ))
                                                  : const TextStyle(
                                                      fontSize: 0.0,
                                                      color:
                                                          Colors.transparent),
                                              child: const Text(
                                                  "Personal projects   "),
                                            );
                                          }),
                                    ),
                                    SizedBox(
                                      height: 50,
                                      child: ValueListenableBuilder(
                                          valueListenable: buttonHover2,
                                          builder: (context, bool showText, _) {
                                            if (showText == false) {
                                              return const SizedBox();
                                            }
                                            return AnimatedDefaultTextStyle(
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              style: showText
                                                  ? GoogleFonts.sevillana(
                                                      textStyle:
                                                          const TextStyle(
                                                      fontSize: 35.0,
                                                      color:
                                                          ColorConstant.golden,
                                                    ))
                                                  : const TextStyle(
                                                      fontSize: 0.0,
                                                      color:
                                                          Colors.transparent),
                                              child: const Text("About me   "),
                                            );
                                          }),
                                    ),
                                    SizedBox(
                                      height: 50,
                                      child: ValueListenableBuilder(
                                          valueListenable: buttonHover3,
                                          builder: (context, bool showText, _) {
                                            if (showText == false) {
                                              return const SizedBox();
                                            }
                                            return AnimatedDefaultTextStyle(
                                              duration: const Duration(
                                                  milliseconds: 500),
                                              style: showText
                                                  ? GoogleFonts.sevillana(
                                                      textStyle:
                                                          const TextStyle(
                                                      fontSize: 35.0,
                                                      color:
                                                          ColorConstant.golden,
                                                    ))
                                                  : const TextStyle(
                                                      fontSize: 0.0,
                                                      color:
                                                          Colors.transparent),
                                              child:
                                                  const Text("Contact me   "),
                                            );
                                          }),
                                    ),
                                    const SizedBox(),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30),
                                    ),
                                    border:
                                        Border.all(color: ColorConstant.golden),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const SizedBox(),
                                      SizedBox(
                                        height: 50,
                                        child: GestureDetector(
                                          onTap: () {
                                            html.window.history.pushState({},
                                                'Personal project',
                                                '/personal-project');
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const PersonalProject(),
                                              ),
                                            );
                                          },
                                          child: MouseRegion(
                                            onEnter: (event) =>
                                                buttonHover1.value = true,
                                            onExit: (event) =>
                                                buttonHover1.value = false,
                                            child: const Icon(
                                              Icons.diversity_2_rounded,
                                              size: 32,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        child: GestureDetector(
                                          onTap: () {
                                            html.window.history.pushState(
                                                {}, 'About', '/about');
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const About(),
                                              ),
                                            );
                                          },
                                          child: MouseRegion(
                                            onEnter: (event) =>
                                                buttonHover2.value = true,
                                            onExit: (event) =>
                                                buttonHover2.value = false,
                                            child: const Icon(
                                              Icons.school_outlined,
                                              size: 32,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        child: GestureDetector(
                                          onTap: () {
                                            html.window.history.pushState(
                                                {}, 'Contact', '/contact');
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Contact(),
                                              ),
                                            );
                                          },
                                          child: MouseRegion(
                                            onEnter: (event) =>
                                                buttonHover3.value = true,
                                            onExit: (event) =>
                                                buttonHover3.value = false,
                                            child: const Icon(
                                              Icons.support_agent,
                                              size: 32,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff1d1d1f),
                        Color(0xff000000),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Opacity(
                          opacity: 0.2,
                          child: Image.asset(
                            ImageConstant.video,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          width: double.infinity,
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "HELLO !",
                                  style: GoogleFonts.crimsonText(
                                    textStyle: const TextStyle(
                                      shadows: [
                                        Shadow(
                                          color: ColorConstant.golden,
                                          offset: Offset(4, 4),
                                          blurRadius: 3.0,
                                        ),
                                      ],
                                      color: ColorConstant.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "I AM VISHAL KUMAR MAURAY",
                                  style: GoogleFonts.crimsonText(
                                    textStyle: const TextStyle(
                                      shadows: [
                                        Shadow(
                                          color: ColorConstant.golden,
                                          offset: Offset(4, 4),
                                          blurRadius: 3.0,
                                        ),
                                      ],
                                      color: ColorConstant.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Experienced mobile developer with a passion for creating intuitive and dynamic applications. Proficient in Cross-Platform development, with expertise in cross-platform (Flutter, React Native) frameworks. Basic knowledge in UI/UX design principles, agile methodologies, and delivering high-quality, scalable solutions. Strong problem-solving abilities and a collaborative team player committed to continuous learning and innovation.",
                                  style: GoogleFonts.heebo(
                                    textStyle: const TextStyle(
                                      color: ColorConstant.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 150,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.w, vertical: 10.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: ColorConstant.golden,
                                      width: 1,
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: ColorConstant.white,
                                        blurRadius: 3,
                                        spreadRadius: 1,
                                        offset: Offset(2, 2),
                                      )
                                    ],
                                    color: ColorConstant.golden,
                                  ),
                                  child: Center(
                                    child: GestureDetector(
                                      child: const Text(
                                        'Download CV',
                                        style: TextStyle(
                                          color: ColorConstant.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 80.h,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
      bottomNavigationBar: MediaQuery.of(context).size.width < 600
          ? SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.black,
                  border: Border.all(color: ColorConstant.white,width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      // height: 50,
                      child: GestureDetector(
                        onTap: () {
                          html.window.history.pushState(
                              {}, 'Personal project', '/personal-project');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const PersonalProject(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            MouseRegion(
                              onEnter: (event) => buttonHover1.value = true,
                              onExit: (event) => buttonHover1.value = false,
                              child: const Icon(
                                Icons.diversity_2_rounded,
                                size: 32,
                                color: ColorConstant.golden,
                              ),
                            ),
                            Text(
                                              'Personal project',
                                              style: TextStyle(
                                                
                                                color: ColorConstant.golden,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox( 

                      // height: 50,
                      child: GestureDetector(
                        onTap: () {
                          html.window.history.pushState({}, 'About', '/about');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const About(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            MouseRegion(
                              onEnter: (event) => buttonHover2.value = true,
                              onExit: (event) => buttonHover2.value = false,
                              child: const Icon(
                                Icons.school_outlined,
                                size: 32,
                                color: ColorConstant.golden,
                              ),
                            ),
                            
                            Text(
                                              'About',
                                              style: TextStyle(
                                                color: ColorConstant.golden,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(

                      // height: 50,
                      child: GestureDetector(
                        onTap: () {
                          html.window.history
                              .pushState({}, 'Contact', '/contact');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Contact(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            MouseRegion(
                              onEnter: (event) => buttonHover3.value = true,
                              onExit: (event) => buttonHover3.value = false,
                              child: const Icon(
                                Icons.support_agent,
                                size: 32,
                                color: ColorConstant.golden,
                              ),
                            ),
                            
                            Text(
                                              'Contact',
                                              style: TextStyle(
                                                color: ColorConstant.golden,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          )
          : const SizedBox(),
    );
  }
}
