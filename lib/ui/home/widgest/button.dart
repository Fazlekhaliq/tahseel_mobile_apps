import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/text.dart';

class draButton extends StatelessWidget {
  final String text;
  final String text2;
  final IconData? icon;

   draButton({super.key, required this.text,  required this.text2, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      width: 210.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12).w,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: text,fontSize: 16,
            fontWeight: FontWeight.w400,

            fontFamily: "Montserrat",),
          Row(
            children: [
              CustomText(text: text2,fontSize: 16,
                fontWeight: FontWeight.w400,

                fontFamily: "Montserrat",),
              Icon(icon)

            ],
          )
        ],
      ),
    );
  }
}
