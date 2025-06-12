import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/common/widgets/custom_heading.dart';
import 'package:portfolio/utils/assets_constant.dart';
import 'package:portfolio/utils/text_styles.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagePathList = [
      Assets.vripl,
      Assets.ehs,
      Assets.softareo,
      Assets.softareo,
    ];
    List<String> companyNameList = [
      "Virtual Reality Infosys Pvt. Ltd.",
      "EHS25 HR India Pvt. Ltd.",
      "Softareo",
      "Softareo",
    ];
    List<String> designationList = [
      "Jr. Software developer",
      "Jr. Flutter developer",
      "Jr. Flutter developer",
      "Flutter intern",
    ];
    List<String> durationList = [
      "FEB 2025 - Present",
      "OCT 2023 - NOV 2024",
      "FEB 2023 - OCT 2023",
      "NOV 2022 - JAN 2023",
    ];
    List<String> experienceList = [
      calculateYearMonthDifference(DateTime(2025, 2), DateTime.now()),
      "1 Year 1 Month",
      "9 Months",
      "3 Months",
    ];
    return Column(
      children: [
        const CustomHeading(tittle: "My Experience"),
        SizedBox(height: 20.h),
        Wrap(
          spacing: 30.w,
          runSpacing: 30.h,
          alignment: WrapAlignment.center,
          children: List.generate(
            companyNameList.length,
            (index) {
              return Container(
                width: 270.w,
                height: 340.h,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(2, 2),
                      blurRadius: 1,
                      spreadRadius: 3,
                    ),
                  ],
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 134.h,
                          child: Image.asset(
                            imagePathList[index],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      companyNameList[index],
                      style: TextStylesDesktop.aclonia26.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).secondaryHeaderColor,
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
                      style: TextStylesDesktop.heebo18.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      experienceList[index],
                      style: TextStylesDesktop.heebo18.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  String calculateYearMonthDifference(DateTime startDate, DateTime endDate) {
    int yearDiff = endDate.year - startDate.year;
    int monthDiff = endDate.month - startDate.month;

    if (monthDiff < 0) {
      yearDiff -= 1;
      monthDiff += 12;
    }
    return " $yearDiff Year $monthDiff Month";
  }
}
