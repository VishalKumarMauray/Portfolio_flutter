import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/utils/text_styles.dart';

import '../../utils/assets_constant.dart';

class SidePanel extends StatelessWidget {
  const SidePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 381.w,
      height: 700.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Vishal K. Mauray',
            style: TextStylesDesktop.aclonia34.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Flutter Developer',
            style: TextStylesDesktop.heebo26.copyWith(
              color: Theme.of(context).secondaryHeaderColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 70.h),
          SizedBox(
            height: 350.h,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 284.h,
                    width: 284.h,
                    decoration: ShapeDecoration(
                      shape: const CircleBorder(),
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                    child: Center(
                      child: Container(
                        height: 254.h,
                        width: 254.h,
                        decoration: ShapeDecoration(
                          shape: const CircleBorder(),
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15.h,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    Assets.user2,
                    width: 256.w,
                    height: 315.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: 142.w,
            height: 40.h,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Resume"),
            ),
          ),
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 50.h,
                width: 50.w,
                child: Image.asset(
                  Assets.github,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 50.w,
                child: Image.asset(
                  Assets.email,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 50.w,
                child: Image.asset(
                  Assets.linkedin,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 50.w,
                child: Image.asset(
                  Assets.telegram,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 50.w,
                child: Image.asset(
                  Assets.whatsapp,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
