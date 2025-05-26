import 'package:flutter/material.dart';
import 'package:portfolio/utils/assets_constant.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PersonalProjects extends StatelessWidget {
  const PersonalProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [];
    final List<String> tittle = [];
    final List<String> discription = [];
    final List<String> playStoreLink = [];
    final List<String> appStoreLink = [];
    return SliverToBoxAdapter(
      child: Row(
        children: List.generate(
          5,
          (index) {
            return Row(
              children: [
                Column(
                  children: <Widget>[
                    Text(
                      tittle[index],
                      style: TextStylesDesktop.heebo22.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      discription[index],
                      style: TextStylesDesktop.heebo22.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        if (playStoreLink[index].isNotEmpty)
                          GestureDetector(
                            onTap: () {
                              launchUrlString(playStoreLink[index]);
                            },
                            child: Image.asset(Assets.playStoreIcon),
                          ),
                        if (appStoreLink[index].isNotEmpty)
                          GestureDetector(
                            onTap: () {
                              launchUrlString(appStoreLink[index]);
                            },
                            child: Image.asset(Assets.appStoreIcon),
                          ),
                      ],
                    ),
                  ],
                ),
                Image.asset(imageList[index]),
              ],
            );
          },
        ),
      ),
    );
  }
}
