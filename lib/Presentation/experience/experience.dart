import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/text_styles.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagePathList = [];
    List<String> companyNameList = [];
    List<String> designationList = [];
    List<String> durationList = [];
    List<String> experienceList = [];
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(
        1,
        (index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(imagePathList[index]),
                Text(
                  companyNameList[index],
                  style: TextStylesDesktop.heebo22.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  designationList[index],
                  style: TextStylesDesktop.heebo22.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  durationList[index],
                  style: TextStylesDesktop.heebo22.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  experienceList[index],
                  style: TextStylesDesktop.heebo22.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
