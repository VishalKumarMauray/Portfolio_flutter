import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                ImageConstant.v,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  'Contact me',
                  style: GoogleFonts.rubikMaze(
                    textStyle: const TextStyle(
                      fontSize: 45.0,
                      color: ColorConstant.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                MediaQuery.of(context).size.width > 450
                    ? Expanded(
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SocialContainer(
                                    link: SocialLinks.email,
                                    icon: ImageConstant.google,
                                    tittle: "Email",
                                  ),
                                  SocialContainer(
                                    link: SocialLinks.instagram,
                                    icon: ImageConstant.instagram,
                                    tittle: "Instagram",
                                  ),
                                  SocialContainer(
                                    link: SocialLinks.snapchat,
                                    icon: ImageConstant.snapchat,
                                    tittle: "Snapchat",
                                  ),
                                  SocialContainer(
                                    link: "",
                                    icon: ImageConstant.telegram,
                                    tittle: "Telegram",
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 150.w,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SocialContainer(
                                    link: SocialLinks.whatsapp,
                                    icon: ImageConstant.whatsapp,
                                    tittle: "Whatsapp",
                                  ),
                                  SocialContainer(
                                    link: SocialLinks.linkedin,
                                    icon: ImageConstant.linkedin,
                                    tittle: "Linkedin",
                                  ),
                                  SocialContainer(
                                    link: SocialLinks.twitter,
                                    icon: ImageConstant.twitter,
                                    tittle: "Twitter",
                                  ),
                                  SocialContainer(
                                    link: SocialLinks.facebook,
                                    icon: ImageConstant.facebook,
                                    tittle: "Facebook",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : const Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SocialContainer(
                                    link: SocialLinks.email,
                                    icon: ImageConstant.google,
                                    tittle: "Email",
                                  ),
                                  SocialContainer(
                                    link: SocialLinks.instagram,
                                    icon: ImageConstant.instagram,
                                    tittle: "Instagram",
                                  ),
                                  SocialContainer(
                                    link: SocialLinks.snapchat,
                                    icon: ImageConstant.snapchat,
                                    tittle: "Snapchat",
                                  ),
                                  SocialContainer(
                                    link: "",
                                    icon: ImageConstant.telegram,
                                    tittle: "Telegram",
                                  ),
                                  SocialContainer(
                                    link: SocialLinks.whatsapp,
                                    icon: ImageConstant.whatsapp,
                                    tittle: "Whatsapp",
                                  ),
                                  SocialContainer(
                                    link: SocialLinks.linkedin,
                                    icon: ImageConstant.linkedin,
                                    tittle: "Linkedin",
                                  ),
                                  SocialContainer(
                                    link: SocialLinks.twitter,
                                    icon: ImageConstant.twitter,
                                    tittle: "Twitter",
                                  ),
                                  SocialContainer(
                                    link: SocialLinks.facebook,
                                    icon: ImageConstant.facebook,
                                    tittle: "Facebook",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 100,
                    width: 300,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Coading is like ',
                          style: GoogleFonts.sevillana(
                            textStyle: const TextStyle(
                              fontSize: 25.0,
                              color: ColorConstant.white,
                            ),
                          ),
                        ),
                        DefaultTextStyle(
                          style: GoogleFonts.heebo(
                            textStyle: const TextStyle(
                              fontSize: 25.0,
                              color: ColorConstant.golden,
                            ),
                          ),
                          child: AnimatedTextKit(
                            isRepeatingAnimation: true,
                            repeatForever: true,
                            animatedTexts: [
                              RotateAnimatedText('POETRY'),
                              RotateAnimatedText('COOKING'),
                              RotateAnimatedText('GRASPING'),
                              RotateAnimatedText('PUZZLE'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SocialContainer extends StatelessWidget {
  final String link;
  final String icon;
  final String tittle;
  const SocialContainer({
    super.key,
    required this.link,
    required this.icon,
    required this.tittle,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          launchUrlString(link);
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 40.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(
                  icon,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                tittle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.sevillana(
                  textStyle: const TextStyle(
                    fontSize: 28.0,
                    color: ColorConstant.golden,
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
