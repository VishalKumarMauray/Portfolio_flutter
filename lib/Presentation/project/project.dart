import 'package:flutter/material.dart';
import 'package:portfolio/utils/assets_constant.dart';
import 'package:portfolio/utils/text_styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../common/widgets/custom_heading2.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      Assets.nearez,
      Assets.edansh,
      Assets.manohar,
      Assets.yantru,
      Assets.isnt,
      Assets.motherDairy,
      Assets.gurupayroll,
      Assets.aarogya,
    ];
    final List<String> tittle = [
      "NEAREZ",
      "EDANSH",
      "MANOHAR JEWELLERS",
      "YANTRU",
      "ISNT",
      "MOTHER DAIRY",
      "GURU PAYROLL",
      "AAROGYA INDIA",
    ];
    final List<String> discription = [
      "We would like to introduce about Cloudriders Solution pvt ltd. We have established in 2022 and provides internet services with the help of our single product 'Nearez' which would help to find local business as per users need.",
      "We are a community that aims to help students to take INFORMED DECISIONS by connecting them with people/mentors who have actually experienced the whole journey.",
      "Manohar Jewellers was established in 2017 as a craftsmanship of gems and jewellery store. It is located in Halasuru, Bangalore. We are experts in providing the most elegant collection of jewellery, whether you need gold or silver designs.",
      "Yantru allows for remote device management of your Android devices. It is an advanced technology that helps to secure monthly instalment (EMI) payments for finance devices. ",
      "The Annual Conference of Indian Society for Non-Destructive Testing (ISNT), the Official Technical Society for NDT/NDE in India, NDE 2023, is organised every year.",
      "It was an initiative under Operation Flood, the world's biggest dairy development program launched to make India a milk sufficient nation",
      "The ayurvedic way is the best way to heal. This application contains several ayurvedic therapy, tips, treatment and medicine in hindi. So, all of you who trust in the power of nature, install the app right now",
      "GuruPayroll HRMS provides employee management system for one or more companies that are registered with us.",
    ];
    final List<String> playStoreLink = [];
    final List<String> appStoreLink = [];
    return SliverToBoxAdapter(
      child: Column(
        children: [
          CustomHeading2(
            tittle: "Projects Worked On",
          ),
          Column(
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
        ],
      ),
    );
  }
}
