import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/common/widgets/custom_heading2.dart';
import 'package:portfolio/utils/assets_constant.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PersonalProjects extends StatelessWidget {
  const PersonalProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      Assets.ppsample,
    ];
    final List<String> tittle = [
      "Portfolio",
    ];
    final List<String> discription = [
      """
This is my personal developer portfolio built entirely using Flutter Web. The purpose of the site is to showcase my work, technical skills, and experience as a mobile and web app developer. I chose Flutter because it allows me to create high-performance, responsive, and visually appealing UIs across platforms — and this portfolio demonstrates that ability."
"Here's what you'll find in my portfolio:
– A personal introduction and background
– My core skills in Flutter, Dart, Firebase, REST APIs, state management (like Provider or Riverpod), and UI/UX design
– A showcase of projects, each with a short description, screenshots, and live links
– Contact details and links to my LinkedIn, GitHub, and other profiles

"This portfolio serves not just as a resume, but also as proof of my real-world development capabilities using Flutter. Let me know if you’d like a walkthrough of any specific project or section."",
""",
    ];
    final List<String> playStoreLink = [
      "",
    ];
    final List<String> appStoreLink = [
      "",
    ];
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const CustomHeading2(
            tittle: "Personal Projects",
          ),
          SizedBox(height: 20.h),
          Column(
            children: List.generate(
              tittle.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 30.0.h),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            Theme.of(context).primaryColor.withOpacity(0.2),
                        radius: 100,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80.0.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    tittle[index],
                                    style: TextStylesDesktop.nunito36.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 20.h),
                                  Text(
                                    discription[index],
                                    style: TextStylesDesktop.nunito16.copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 40.h),
                                  Row(
                                    children: [
                                      if (playStoreLink[index].isNotEmpty)
                                        GestureDetector(
                                          onTap: () {
                                            launchUrlString(
                                                playStoreLink[index]);
                                          },
                                          child: Image.asset(
                                            Assets.playStoreIcon,
                                            height: 40.h,
                                            width: 135.w,
                                          ),
                                        ),
                                      if (appStoreLink[index].isNotEmpty)
                                        GestureDetector(
                                          onTap: () {
                                            launchUrlString(
                                                appStoreLink[index]);
                                          },
                                          child: Image.asset(
                                            Assets.appStoreIcon,
                                            height: 40.h,
                                            width: 135.w,
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              imageList[index],
                              height: 430.h,
                              width: 530.w,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
