import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tahseel_mobile_apps/ui/widgets/text.dart';
import 'package:tahseel_mobile_apps/utils/images.dart';

class wellat extends StatelessWidget {
  const wellat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 23.h,
              width: 23.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImage.walletImage),

                  )
              ),
            ),
            SizedBox(width: 5.w,),
            CustomText(text: "Wallet",fontSize: 18,fontWeight: FontWeight.w700,
              fontFamily: "Montserrat",
              color: Colors.white,),
          ],
        ),

        Container(
          height: 32.h,
          width: 175.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(child: CustomText(text: "118.900",fontSize: 16,)),
        )
      ],
    );
  }
}
