import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tahseel_mobile_apps/ui/widgets/text.dart';
import 'package:tahseel_mobile_apps/utils/images.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(text: "Need Help ?",fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Colors.white,
        ),
      Row(
        children: [
          Container(
            height: 41.h,
            width: 61.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImage.msImage),
                )
            ),
          ),
          SizedBox(width: 10.w,),
          Container(
            height: 41.h,
            width: 61.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImage.whatImage),
                )
            ),
          )
        ],
      )
      ],
    );
  }
}
