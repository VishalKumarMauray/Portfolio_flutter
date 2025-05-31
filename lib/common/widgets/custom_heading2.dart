import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/text_styles.dart';

class CustomHeading2 extends StatelessWidget {
  final String tittle;

  const CustomHeading2({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    const diamondSize = 7.0;

    Widget buildDiamond() {
      return Transform.rotate(
        angle: 0.785398,
        child: Container(
          width: diamondSize,
          height: diamondSize,
          color: Theme.of(context).secondaryHeaderColor,
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          tittle,
          style: TextStylesDesktop.aclonia44.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 20,
          width: 0.4.sw,
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  color: Theme.of(context).secondaryHeaderColor,
                  thickness: 3,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              SizedBox(
                height: 20,
                width: 20,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(top: 0, child: buildDiamond()),
                    Positioned(bottom: 0, child: buildDiamond()),
                    Positioned(left: 0, child: buildDiamond()),
                    Positioned(right: 0, child: buildDiamond()),
                  ],
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: Divider(
                  color: Theme.of(context).secondaryHeaderColor,
                  thickness: 3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
