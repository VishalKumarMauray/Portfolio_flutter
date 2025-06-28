import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      "NESA Tracking",
      "Fleetminder Fleet Management",
    ];
    final List<String> discription = [
      "We would like to introduce about Cloudriders Solution pvt ltd. We have established in 2022 and provides internet services with the help of our single product 'Nearez' which would help to find local business as per users need.",
      "We are a community that aims to help students to take INFORMED DECISIONS by connecting them with people/mentors who have actually experienced the whole journey.",
      "Manohar Jewellers was established in 2017 as a craftsmanship of gems and jewellery store. It is located in Halasuru, Bangalore. We are experts in providing the most elegant collection of jewellery, whether you need gold or silver designs.",
      "Yantru allows for remote device management of your Android devices. It is an advanced technology that helps to secure monthly instalment (EMI) payments for finance devices. ",
      "The Annual Conference of Indian Society for Non-Destructive Testing (ISNT), the Official Technical Society for NDT/NDE in India, NDE 2023, is organised every year.",
      "It was an initiative under Operation Flood, the world's biggest dairy development program launched to make India a milk sufficient nation",
      "GuruPayroll HRMS provides employee management system for one or more companies that are registered with us.",
      "The ayurvedic way is the best way to heal. This application contains several ayurvedic therapy, tips, treatment and medicine in hindi. So, all of you who trust in the power of nature, install the app right now",
      "NESA Tracking is a powerful GPS tracking app designed to give businesses and individuals full control over their vehicles. Whether you're tracking a single car or managing a large fleet, NESA Tracking app and portals provide intelligent tools to enhance safety, reduce costs, and increase operational efficiency. Built with advanced features like engine immobilization, video streaming and playback, trip replays, and geofencing NESA Tracking is the ultimate solution for transport companies, logistics operators, delivery services, and more.",
      "Fleetminder is a powerful GPS tracking and fleet management app designed to give businesses and individuals full control over their vehicles. Whether you're tracking a single car or managing a large fleet, Fleetminder provides intelligent tools to enhance safety, reduce costs, and increase operational efficiency.Built with advanced features like engine immobilization, video playback and streaming, trip replays, and geofencing, Fleetminder is the ultimate solution for transport companies, logistics operators, delivery services, and more.",
    ];
    final List<String> playStoreLink = [
      "https://play.google.com/store/apps/details?id=com.nearez.nearezapp",
      "https://play.google.com/store/apps/details?id=com.app.edansh",
      "https://play.google.com/store/apps/details?id=com.jewelflix.manoharjewellers&hl=en_IN",
      "https://play.google.com/store/apps/details?id=com.yantru.app&hl=en_IN",
      "https://play.google.com/store/apps/details?id=com.isnt.app&hl=en_IN",
      "https://play.google.com/store/search?q=mother%20dairy&c=apps&hl=en_IN",
      "https://play.google.com/store/apps/details?id=com.lalit.Gurupayroll&hl=en_IN",
      "https://play.google.com/store/apps/details?id=com.lalit.ayurvedsanstha&hl=en_IN",
      "https://play.google.com/store/apps/details?id=com.nesa.fleet&hl=en_IN",
      "https://play.google.com/store/apps/details?id=com.fleetminder.user.fleet_minder&hl=en_IN",
    ];
    final List<String> appStoreLink = [
      "",
      "",
      "",
      "",
      "",
      "https://apps.apple.com/in/app/mother-dairy/id6450038507",
      "https://apps.apple.com/in/app/guru-payroll/id6503728698",
      "",
      "https://apps.apple.com/in/app/nesa-tracking/id6743690298",
      "https://apps.apple.com/in/app/fleetminder-fleet-management/id1220705199",
    ];
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const CustomHeading2(
            tittle: "Projects Worked On",
          ),
          SizedBox(height: 20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              imageList.length,
              (index) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..scale(index % 2 == 0 ? -1.0 : 1.0, 1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 0.2.sw),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 10.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.identity()
                              ..scale(index % 2 == 0 ? -1.0 : 1.0, 1.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tittle[index],
                                  style: TextStylesDesktop.aclonia52.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  discription[index],
                                  style: TextStylesDesktop.heebo18.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Row(
                                  children: [
                                    if (playStoreLink[index].isNotEmpty)
                                      GestureDetector(
                                        onTap: () {
                                          launchUrlString(playStoreLink[index]);
                                        },
                                        child: Image.asset(
                                          Assets.playStoreIcon,
                                          height: 100.h,
                                          width: 300.w,
                                        ),
                                      ),
                                    if (appStoreLink[index].isNotEmpty)
                                      GestureDetector(
                                        onTap: () {
                                          launchUrlString(appStoreLink[index]);
                                        },
                                        child: Image.asset(
                                          Assets.appStoreIcon,
                                          height: 100.h,
                                          width: 300.w,
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-40, -30),
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()
                            ..scale(index % 2 == 0 ? -1.0 : 1.0, 1.0),
                          child: Image.asset(
                            imageList[index],
                            fit: BoxFit.cover,
                            height: 618.h,
                          ),
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
