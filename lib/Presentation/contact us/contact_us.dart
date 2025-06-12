import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common/widgets/custom_heading2.dart';
import 'package:portfolio/utils/assets_constant.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomHeading2(
            tittle: "Contact Us",
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                Assets.ballon,
                height: 400.h,
                width: 400.w,
              ),
              Image.asset(
                Assets.ballon,
                height: 430.h,
                width: 530.w,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 200.0.w),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialContainer(link: SocialLinks.email, icon: Assets.googleG),
                SocialContainer(link: SocialLinks.facebook, icon: Assets.fbG),
                SocialContainer(
                    link: SocialLinks.instagram, icon: Assets.instagramG),
                SocialContainer(
                    link: SocialLinks.linkedin, icon: Assets.linkedinG),
                SocialContainer(
                    link: SocialLinks.snapchat, icon: Assets.snapchatG),
                SocialContainer(
                    link: SocialLinks.telegram, icon: Assets.telegramG),
                SocialContainer(
                    link: SocialLinks.twitter, icon: Assets.twitterG),
                SocialContainer(
                    link: SocialLinks.whatsapp, icon: Assets.whatsappG),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Coading is like ',
                  style: TextStylesDesktop.aclonia44.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: DefaultTextStyle(
                    style: TextStylesDesktop.aclonia52
                        .copyWith(color: Theme.of(context).primaryColor),
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
  const SocialContainer({
    super.key,
    required this.link,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          launchUrlString(link);
        },
        child: SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(
            icon,
          ),
        ),
      ),
    );
  }
}
