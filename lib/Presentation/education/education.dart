import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/common/widgets/custom_heading.dart';
import 'package:portfolio/theme/controller/theme_provider.dart';
import 'package:portfolio/utils/assets_constant.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:provider/provider.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeading(tittle: "My Education"),
        SizedBox(height: 20.h),
        const ImageCard(
          isFlipped: false,
          imagePath: Assets.vbspu,
          text: "PG",
          college: "Veer Bahadur Singh Purvanchal University (Jaunpur)",
          course: "M.C.A",
          duration: "(2020 - 2022)",
          tittle: "Post Graduation",
        ),
        SizedBox(height: 20.h),
        const ImageCard(
          isFlipped: true,
          text: "UG",
          imagePath: Assets.kcmt,
          college: "Khandelwal College (Bareilly)",
          course: "B.C.A",
          duration: "(2017 - 2020)",
          tittle: "Graduation",
        ),
        SizedBox(height: 20.h),
        const ImageCard(
          isFlipped: false,
          text: "12th",
          imagePath: Assets.harrow,
          college: "Harrow School (Bareilly)",
          duration: "(2015 - 2017)",
          tittle: "Intermediate",
        ),
        SizedBox(height: 20.h),
        const ImageCard(
          isFlipped: true,
          imagePath: Assets.harrow,
          text: "10th",
          college: "Harrow School (Bareilly)",
          duration: "(2015 - 2017)",
          tittle: "High School",
        ),
      ],
    );
  }
}

class ImageCard extends StatelessWidget {
  final bool isFlipped;
  final String imagePath;
  final String text;
  final String tittle;
  final String college;
  final String duration;
  final String? course;

  const ImageCard({
    super.key,
    required this.isFlipped,
    required this.imagePath,
    required this.text,
    required this.tittle,
    required this.college,
    required this.duration,
    this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()..scale(isFlipped ? -1.0 : 1.0, 1.0),
      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: 150.w,
            ),
            SizedBox(
              height: 257.h,
              width: 400.w,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 180.w,
                    child: Provider.of<ThemeProvider>(context).themeMode ==
                            ThemeMode.light
                        ? Image.asset(
                            Assets.shapeLight,
                            width: 142.w,
                            height: 119.h,
                          )
                        : Image.asset(
                            Assets.shapeDark,
                            width: 142.w,
                            height: 119.h,
                          ),
                  ),
                  Positioned(
                    left: 0,
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..scale(isFlipped ? -1.0 : 1.0, 1.0),
                      child: Container(
                        height: 257.h,
                        width: 257.w,
                        decoration: ShapeDecoration(
                          shape: const CircleBorder(),
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                        child: Center(
                          child: Container(
                            height: 227.h,
                            width: 227.w,
                            decoration: ShapeDecoration(
                              shape: const CircleBorder(),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(
                                  imagePath,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 40.w,
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..scale(isFlipped ? -1.0 : 1.0, 1.0),
                      child: Container(
                        height: 83.h,
                        width: 83.w,
                        decoration: ShapeDecoration(
                          shape: const CircleBorder(),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Center(
                          child: Container(
                            height: 63.h,
                            width: 63.w,
                            decoration: const ShapeDecoration(
                              shape: CircleBorder(),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                text,
                                style: TextStylesDesktop.heebo22.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..scale(isFlipped ? -1.0 : 1.0, 1.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tittle,
                      style: TextStylesDesktop.aclonia34.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      college,
                      style: TextStylesDesktop.heebo22.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                    if (course != null)
                      Text(
                        course!,
                        style: TextStylesDesktop.heebo22.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).secondaryHeaderColor,
                        ),
                      ),
                    Text(
                      duration,
                      style: TextStylesDesktop.heebo22.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 100.w,
            ),
          ],
        ),
      ),
    );
  }
}
