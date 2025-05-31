import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/common/widgets/custom_heading.dart';

import '../../utils/text_styles.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeading(
          tittle: "My Skills",
        ),
        SizedBox(height: 10.h),
        const SkillsCard(
          tittle: "Flutter",
          value: 0.8,
        ),
        SizedBox(height: 5.h),
        const SkillsCard(
          tittle: "Git",
          value: 0.6,
        ),
        SizedBox(height: 5.h),
        const SkillsCard(
          tittle: "Ios",
          value: 0.2,
        ),
        SizedBox(height: 5.h),
        const SkillsCard(
          tittle: "Android",
          value: 0.4,
        ),
        SizedBox(height: 5.h),
        const SkillsCard(
          tittle: "Firebase",
          value: 0.5,
        ),
        SizedBox(height: 5.h),
        const SkillsCard(
          tittle: "Rest Api",
          value: 0.7,
        ),
      ],
    );
  }
}

class SkillsCard extends StatelessWidget {
  final String tittle;
  final double value;

  const SkillsCard({
    super.key,
    required this.tittle,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tittle,
          style: TextStylesDesktop.readexPro16.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: LinearProgressIndicator(
            value: value,
            backgroundColor: Theme.of(context).cardColor,
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).primaryColor,
            ),
            borderRadius: BorderRadius.circular(20),
            minHeight: 20.h,
          ),
        ),
      ],
    );
  }
}
