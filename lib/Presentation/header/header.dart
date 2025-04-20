import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/assets_constant.dart';
import 'package:portfolio/utils/text_styles.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            height: 530.h,
            width: 1.sw,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 360.h,
                    width: 670.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).primaryColor,
                          Theme.of(context).secondaryHeaderColor,
                        ],
                        begin: Alignment(0, 0),
                        end: Alignment(1, 1),
                        tileMode: TileMode.clamp,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        Assets.laptopBg,
                        width: 383.w,
                        height: 248.h,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(Assets.user),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).cardColor,
                    ),
                    height: 360.h,
                    width: 670.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Hello, ',
                            style: TextStylesDesktop.readexPro24.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: "I'm",
                                style: TextStylesDesktop.readexPro24.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0.w),
                          child: Text(
                            'Vishal Kumar Mauray',
                            style: TextStylesDesktop.readexPro42.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0.w),
                          child: Text(
                            'Flutter Developer',
                            style: TextStylesDesktop.readexPro22.copyWith(
                              color: Theme.of(context).secondaryHeaderColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0.w),
                          child: Text(
                            'A skilled flutter developer with 2.3 years of experience, you can contact me at any time to start a work full of creativity and good performance.',
                            style: TextStylesDesktop.readexPro18.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 50.h,
                                width: 50.w,
                                child: Image.asset(Assets.github),
                              ),
                              SizedBox(
                                height: 50.h,
                                width: 50.w,
                                child: Image.asset(Assets.email),
                              ),
                              SizedBox(
                                height: 50.h,
                                width: 50.w,
                                child: Image.asset(Assets.linkedin),
                              ),
                              SizedBox(
                                height: 50.h,
                                width: 50.w,
                                child: Image.asset(Assets.telegram),
                              ),
                              SizedBox(
                                height: 50.h,
                                width: 50.w,
                                child: Image.asset(Assets.whatsapp),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: SizedBox(
                    width: 161.w,
                    height: 50.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Resume",
                        style: TextStylesDesktop.readexPro22.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
