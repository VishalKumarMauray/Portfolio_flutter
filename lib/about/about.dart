import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  List<String> venomImg = [
    // ImageConstant.venom1,
    ImageConstant.venom2,
    // ImageConstant.venom3,
    // ImageConstant.venom4,
    // ImageConstant.venom5,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MediaQuery.of(context).size.width > ScreenSizes.tabletWidth
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 0.6.sw,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 50.h,
                              ),
                              Text(
                                'Vishal Kumar Mauray',
                                style: GoogleFonts.sevillana(
                                  textStyle: const TextStyle(
                                    fontSize: 45.0,
                                    color: ColorConstant.golden,
                                  ),
                                ),
                              ),
                              Text(
                                'Mobile App Developer',
                                style: GoogleFonts.sevillana(
                                  textStyle: const TextStyle(
                                    fontSize: 35.0,
                                    color: ColorConstant.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 60.h,
                              ),
                              Text(
                                "Highly skilled and motivated Flutter Developer with over 1 year of hands-on experience creating and implementing innovative mobile applications. Proficient in all stages of the software development life cycle, with a strong foundation in mobile app architecture, user interface design, and cross-platform development. Adept at collaborating with cross-functional teams to define, design, and ship new features. Proven track record of delivering high-quality and performant applications for both Android and IOS platforms.",
                                style: GoogleFonts.heebo(
                                  textStyle: const TextStyle(
                                    fontSize: 20.0,
                                    color: ColorConstant.golden,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: CarouselSlider(
                            options: CarouselOptions(
                              height: 450,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              autoPlayInterval: const Duration(seconds: 5),
                              enableInfiniteScroll: true,
                            ),
                            items: venomImg.map((i) {
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
                        )
                      ],
                    )
                  :  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 50.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 150,
                                  height: 150,
                                  child: ClipRRect
                                  (
                                    borderRadius: BorderRadius.circular(100)
                                    ,child: Image.asset(ImageConstant.venom2,fit: BoxFit.cover,)),
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Vishal Kumar Mauray',
                                        style: GoogleFonts.sevillana(
                                          textStyle: const TextStyle(
                                            fontSize: 45.0,
                                            color: ColorConstant.golden,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Mobile App Developer',
                                        style: GoogleFonts.sevillana(
                                          textStyle: const TextStyle(
                                            fontSize: 35.0,
                                            color: ColorConstant.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Highly skilled and motivated Flutter Developer with over 1 year of hands-on experience creating and implementing innovative mobile applications. Proficient in all stages of the software development life cycle, with a strong foundation in mobile app architecture, user interface design, and cross-platform development. Adept at collaborating with cross-functional teams to define, design, and ship new features. Proven track record of delivering high-quality and performant applications for both Android and IOS platforms.",
                              style: GoogleFonts.heebo(
                                textStyle: const TextStyle(
                                  fontSize: 20.0,
                                  color: ColorConstant.golden,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        )
                    ,
              MediaQuery.of(context).size.width > 770
                  ? Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: ColorConstant.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Industrial Experience",
                                  style: GoogleFonts.sevillana(
                                    textStyle: const TextStyle(
                                      fontSize: 25.0,
                                      color: ColorConstant.golden,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                MenuContainer(
                                  date: DateTime(2022, 11),
                                  image: ImageConstant.flutter,
                                  skill: "flutter",
                                ),
                                MenuContainer(
                                  date: DateTime(2022, 11),
                                  image: ImageConstant.dart,
                                  skill: "dart",
                                ),
                                MenuContainer(
                                  isFixed: true,
                                  image: ImageConstant.firebase,
                                  skill: "Firebase",
                                  date: DateTime(2022),
                                  exp: "1 Year",
                                ),
                                MenuContainer(
                                  date: DateTime(2020, 11),
                                  image: ImageConstant.git,
                                  skill: "Git",
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Other Skills",
                                  style: GoogleFonts.sevillana(
                                    textStyle: const TextStyle(
                                      fontSize: 25.0,
                                      color: ColorConstant.golden,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                MenuContainer(
                                  date: DateTime(2021),
                                  image: ImageConstant.kotlin,
                                  skill: "Kotlin",
                                  isFixed: true,
                                  exp: "5 Months",
                                ),
                                MenuContainer(
                                  date: DateTime(2022),
                                  image: ImageConstant.c,
                                  skill: "C",
                                  isFixed: true,
                                  exp: "4 years",
                                ),
                                MenuContainer(
                                  date: DateTime(2022),
                                  image: ImageConstant.cplusplus,
                                  skill: "C++",
                                  isFixed: true,
                                  exp: "2 Years",
                                ),
                                MenuContainer(
                                  date: DateTime(2022),
                                  image: ImageConstant.java,
                                  skill: "Java",
                                  isFixed: true,
                                  exp: "1 year",
                                ),
                                MenuContainer(
                                  date: DateTime(2022),
                                  image: ImageConstant.html,
                                  skill: "Html",
                                  isFixed: true,
                                  exp: "1 Year",
                                ),
                                MenuContainer(
                                  date: DateTime(2022),
                                  image: ImageConstant.react,
                                  skill: "React native",
                                  isFixed: true,
                                  exp: "1 Month",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: ColorConstant.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Industrial Experience",
                            style: GoogleFonts.sevillana(
                              textStyle: const TextStyle(
                                fontSize: 25.0,
                                color: ColorConstant.golden,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          MenuContainer(
                            date: DateTime(2022, 11),
                            image: ImageConstant.flutter,
                            skill: "flutter",
                          ),
                          MenuContainer(
                            date: DateTime(2022, 11),
                            image: ImageConstant.dart,
                            skill: "dart",
                          ),
                          MenuContainer(
                            isFixed: true,
                            image: ImageConstant.firebase,
                            skill: "Firebase",
                            date: DateTime(2022),
                            exp: "1 Year",
                          ),
                          MenuContainer(
                            date: DateTime(2020, 11),
                            image: ImageConstant.git,
                            skill: "Git",
                          ),
                          SizedBox(height: 40),
                          Text(
                            "Other Skills",
                            style: GoogleFonts.sevillana(
                              textStyle: const TextStyle(
                                fontSize: 25.0,
                                color: ColorConstant.golden,
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          MenuContainer(
                            date: DateTime(2021),
                            image: ImageConstant.kotlin,
                            skill: "Kotlin",
                            isFixed: true,
                            exp: "5 Months",
                          ),
                          MenuContainer(
                            date: DateTime(2022),
                            image: ImageConstant.c,
                            skill: "C",
                            isFixed: true,
                            exp: "4 years",
                          ),
                          MenuContainer(
                            date: DateTime(2022),
                            image: ImageConstant.cplusplus,
                            skill: "C++",
                            isFixed: true,
                            exp: "2 Years",
                          ),
                          MenuContainer(
                            date: DateTime(2022),
                            image: ImageConstant.java,
                            skill: "Java",
                            isFixed: true,
                            exp: "1 year",
                          ),
                          MenuContainer(
                            date: DateTime(2022),
                            image: ImageConstant.html,
                            skill: "Html",
                            isFixed: true,
                            exp: "1 Year",
                          ),
                          MenuContainer(
                            date: DateTime(2022),
                            image: ImageConstant.react,
                            skill: "React native",
                            isFixed: true,
                            exp: "1 Month",
                          ),
                        ],
                      ),
                    ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Selected Experience',
                style: GoogleFonts.rubikMaze(
                  textStyle: const TextStyle(
                    fontSize: 40.0,
                    color: ColorConstant.golden,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              if (MediaQuery.of(context).size.width <= 600)
                Text(
                  "Employement",
                  style: GoogleFonts.sevillana(
                    textStyle: const TextStyle(
                      fontSize: 30.0,
                      color: ColorConstant.golden,
                    ),
                  ),
                ),
              ExperienceContainer(
                discription:
                    '❧ Backend development :- RESTful APIs for our compony projects in java.\n❧ Database:- Manage database on sql for our company projects.\n❧ Flutter Development.',
                mainHead: 'Employement',
                subtittle: 'EHS25 HR India Private Limited - ${dateDifference(DateTime(2023, 10))}',
                tittle: 'Senior Flutter Developer',
              ),
              const SizedBox(
                height: 10,
              ),
              const ExperienceContainer(
                discription: '❧ Flutter Development.',
                mainHead: '',
                subtittle: 'Softareo Private Limited - 1 Year',
                tittle: 'Junior Flutter Developer',
              ),
              const SizedBox(
                height: 10,
              ),
              const ExperienceContainer(
                discription: '❧ Flutter Development.',
                mainHead: '',
                subtittle: 'Softareo Private Limited - 3 Months',
                tittle: 'Flutter Developer Intern',
              ),
              const SizedBox(
                height: 20,
              ),
              if (MediaQuery.of(context).size.width <= 600)
                Text(
                  "Education",
                  style: GoogleFonts.sevillana(
                    textStyle: const TextStyle(
                      fontSize: 30.0,
                      color: ColorConstant.golden,
                    ),
                  ),
                ),
              const ExperienceContainer(
                discription: '',
                mainHead: 'Education',
                subtittle: 'Veer Bahadur Singh Purvanchal University',
                tittle: 'Master of Computer Application',
              ),
            ],
          ),
        ),
      ),
    );
  }

  String dateDifference(date) {
    var presentDate = DateTime(DateTime.now().year, DateTime.now().month);
    var diff = (presentDate.difference(date).inDays / 365).toString();
    var result =
        "${diff.split(".")[0]} years ${diff.split(".")[1].isNotEmpty ? "${diff.split(".")[1][0]} Months" : ""}";
    return result;
  }
}

class MenuContainer extends StatelessWidget {
  final String image;
  final String skill;
  final DateTime date;
  final bool isFixed;
  final String exp;
  const MenuContainer({
    super.key,
    required this.date,
    required this.image,
    required this.skill,
    this.isFixed = false,
    this.exp = "",
  });

  @override
  Widget build(BuildContext context) {
    var date2 = DateTime(DateTime.now().year, DateTime.now().month);
    var diff = date2.difference(date);
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.amberAccent.withOpacity(0.6),
          Colors.amber.withOpacity(0.6),
          ColorConstant.golden.withOpacity(0.6),
        ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(height: 50, width: 50, child: SvgPicture.asset(image)),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              skill,
              style: GoogleFonts.sevillana(
                textStyle: const TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Text(
            isFixed ? exp : "${diff.inDays ~/ 365}+ years",
            style: GoogleFonts.heebo(
              textStyle: const TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceContainer extends StatelessWidget {
  final String mainHead;
  final String tittle;
  final String subtittle;
  final String discription;
  const ExperienceContainer({
    super.key,
    required this.mainHead,
    required this.tittle,
    required this.subtittle,
    required this.discription,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (MediaQuery.of(context).size.width > 600)
          SizedBox(
            width: 160,
            child: Text(
              mainHead,
              style: GoogleFonts.sevillana(
                textStyle: const TextStyle(
                  fontSize: 30.0,
                  color: ColorConstant.golden,
                ),
              ),
            ),
          ),
        const SizedBox(
          width: 30,
        ),
        const Column(
          children: [
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 8,
              backgroundColor: ColorConstant.white,
            ),
          ],
        ),
        const SizedBox(
          width: 35,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tittle,
                style: GoogleFonts.sevillana(
                  textStyle: const TextStyle(
                    fontSize: 30.0,
                    color: ColorConstant.white,
                  ),
                ),
              ),
              Text(
                subtittle,
                style: GoogleFonts.heebo(
                  textStyle: const TextStyle(
                    fontSize: 20.0,
                    color: ColorConstant.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                discription,
                style: GoogleFonts.heebo(
                  textStyle: const TextStyle(
                    fontSize: 18.0,
                    color: ColorConstant.golden,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
