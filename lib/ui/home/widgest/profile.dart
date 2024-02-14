import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tahseel_mobile_apps/ui/widgets/text.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';
import 'package:tahseel_mobile_apps/utils/images.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color:  AppColors.profileColor,
        borderRadius: BorderRadius.circular(14).w,

      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.0.w,vertical: 10.h),
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 68.h,
              width: 69.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                 image: AssetImage(AppImage.profileImage),
                )
              ),
            ),
            SizedBox(width: 6.w,),

            const Column(
              children: [
                CustomText(text: "Yaqoub Alnasser",fontSize: 18,fontWeight: FontWeight.w700,
                fontFamily: "Montserrat",
                color: Colors.white,),
                CustomText(text: "Y.alnasser@yemnak.kw",fontSize: 12,fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat",
                  color: Colors.white,)
              ],
            )

          ],
        ),
      ),
    );
  }
}
