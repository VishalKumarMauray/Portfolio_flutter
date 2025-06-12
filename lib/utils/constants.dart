import 'package:flutter/material.dart';

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 650;

bool isTab(BuildContext context) =>
    MediaQuery.of(context).size.width < 1300 &&
    MediaQuery.of(context).size.width >= 650;

bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300;

const Size desktopSize = Size(1366, 768);
const Size tabletSize = Size(800, 1280);
const Size mobileSize = Size(390, 844);

class SocialLinks {
  static const String email = "mailto:vishalmauray18@gmail.com";
  static const String instagram =
      "https://www.instagram.com/mauray_deep?igsh=MWxoZDhmZDViaHR4MA==";
  static const String snapchat =
      "https://www.snapchat.com/add/mauray_deep?share_id=_jdXbQ4W4_g&locale=en-GB";
  static const String telegram = "https://t.me/Maurya_DEEP";
  static const String whatsapp = "https://wa.me/+918923851561";
  static const String linkedin =
      "https://www.linkedin.com/in/vishal-mauray-0a875328a";
  static const String twitter = "https://twitter.com/VishalM55363512";
  static const String facebook =
      "https://www.facebook.com/profile.php?id=100009762091628";
}
