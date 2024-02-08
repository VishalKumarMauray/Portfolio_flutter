import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PersonalProject extends StatefulWidget {
  const PersonalProject({super.key});

  @override
  State<PersonalProject> createState() => _PersonalProjectState();
}

class _PersonalProjectState extends State<PersonalProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Text(
              'Personal Projects',
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
            Text(
              'Comming Soon',
              style: GoogleFonts.sevillana(
                textStyle: const TextStyle(
                  fontSize: 45.0,
                  color: ColorConstant.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectDataContainer extends StatelessWidget {
  final String backgroundImage;
  final String name;
  final String shortDiscription;
  final String longDiscription;
  final String features;
  final List scrollingImages;
  final String link;
  const ProjectDataContainer({
    super.key,
    required this.backgroundImage,
    required this.name,
    required this.shortDiscription,
    required this.longDiscription,
    required this.features,
    required this.scrollingImages,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 300,
          child: Opacity(
            opacity: 0.3,
            child: Image.asset(
              backgroundImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0.w),
          child: Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.only(bottom: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.sevillana(
                        textStyle: const TextStyle(
                          fontSize: 35.0,
                          color: ColorConstant.golden,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Divider(
                          color: ColorConstant.white,
                          thickness: 3,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            shortDiscription,
                            style: GoogleFonts.heebo(
                              textStyle: const TextStyle(
                                fontSize: 20.0,
                                color: ColorConstant.golden,
                              ),
                            ),
                          ),
                          Text(
                            longDiscription,
                            style: GoogleFonts.heebo(
                              textStyle: const TextStyle(
                                fontSize: 18.0,
                                color: ColorConstant.white,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Features:',
                            style: GoogleFonts.heebo(
                              textStyle: const TextStyle(
                                fontSize: 20.0,
                                color: ColorConstant.golden,
                              ),
                            ),
                          ),
                          Text(
                            features,
                            style: GoogleFonts.heebo(
                              textStyle: const TextStyle(
                                fontSize: 18.0,
                                color: ColorConstant.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 0.4.sw,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          // height: 450,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          autoPlayInterval: const Duration(seconds: 5),
                          enableInfiniteScroll: true,
                        ),
                        items: scrollingImages.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(top: 70.h, left: 60, right: 60),
                                decoration: const BoxDecoration(color: Colors.transparent),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    i,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 0.6.sw,
                  child: const Divider(
                    color: ColorConstant.white,
                    thickness: 2,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Download app:",
                      style: GoogleFonts.sevillana(
                        textStyle: const TextStyle(
                          fontSize: 20.0,
                          color: ColorConstant.golden,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        launchUrlString(link);
                      },
                      child: SizedBox(
                        height: 80,
                        child: Image.asset(ImageConstant.playstore),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
