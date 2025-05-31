import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Presentation/contact%20us/contact_us.dart';
import 'package:portfolio/Presentation/education/education.dart';
import 'package:portfolio/Presentation/experience/experience.dart';
import 'package:portfolio/Presentation/header/header.dart';
import 'package:portfolio/Presentation/personal%20project/personal_projects.dart';
import 'package:portfolio/Presentation/project/project.dart';
import 'package:portfolio/Presentation/side%20panel/side_panel.dart';
import 'package:portfolio/Presentation/skills/skills.dart';
import 'package:provider/provider.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import '../../theme/controller/theme_provider.dart';
import '../../utils/assets_constant.dart';

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
    return DefaultStickyHeaderController(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 20.h),
          child: CustomScrollView(
            scrollBehavior: NoScrollbarBehavior(),
            slivers: [
              // SliverToBoxAdapter(
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Image.asset(
              //         Assets.portfolioIcon,
              //         height: 78.h,
              //         width: 184.w,
              //       ),
              //       Stack(
              //         children: [
              //           AnimatedOpacity(
              //             opacity: imageBOpacity,
              //             duration: const Duration(milliseconds: 300),
              //             child: Image.asset(
              //               Assets.sun,
              //               height: 78.h,
              //               width: 78.w,
              //             ),
              //           ),
              //           Positioned(
              //             top: 12,
              //             child: GestureDetector(
              //               onTap: () async {
              //                 if (imageBOpacity == 1) {
              //                   setState(() {
              //                     imageBOpacity = 0;
              //                   });
              //                   await Future.delayed(
              //                       const Duration(milliseconds: 100));
              //                   themeProvider.toggleTheme(true);
              //                 } else {
              //                   setState(() {
              //                     imageBOpacity = 1;
              //                   });
              //                   await Future.delayed(
              //                       const Duration(milliseconds: 100));
              //                   themeProvider.toggleTheme(false);
              //                 }
              //               },
              //               child: Image.asset(
              //                 Assets.cloud,
              //                 height: 78.h,
              //                 width: 98.w,
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              // SliverToBoxAdapter(child: SizedBox(height: 30.h)),
              // const Header(),
              // SliverToBoxAdapter(child: SizedBox(height: 200.h)),
              // SliverStickyHeader(
              //   overlapsContent: true,
              //   header: const Align(
              //     alignment: Alignment.centerLeft,
              //     child: SidePanel(),
              //   ),
              //   sliver: SliverPadding(
              //     padding: EdgeInsets.only(left: 385.w),
              //     sliver: SliverToBoxAdapter(
              //       child: Column(children: [
              //         const Skills(),
              //         SizedBox(height: 20.h),
              //         const Education(),
              //         SizedBox(height: 20.h),
              //         const Experience(),
              //       ]),
              //     ),
              //   ),
              // ),
              // SliverToBoxAdapter(child: SizedBox(height: 30.h)),
              const Project(),
              SliverToBoxAdapter(child: SizedBox(height: 30.h)),
              const PersonalProjects(),
              SliverToBoxAdapter(child: SizedBox(height: 30.h)),
              const ContactUs(),
            ],
          ),
        ),
      ),
    );
  }
}

class NoScrollbarBehavior extends ScrollBehavior {
  @override
  Widget buildScrollbar(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
