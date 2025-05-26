import 'package:flutter/material.dart';
import 'package:portfolio/utils/assets_constant.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [];
    final List<String> tittle = [];
    final List<String> discription = [];
    final List<String> playStoreLink = [];
    final List<String> appStoreLink = [];
    return SliverToBoxAdapter(
      child: Column(
        children: List.generate(
          5,
          (index) {
            return Row(
              children: [
                Image.asset(imageList[index]),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Column(
                    children: [
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
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
