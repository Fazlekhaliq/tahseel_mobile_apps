import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';

import '../../widgets/text.dart';

class DrawerIcons extends StatelessWidget {
  final  ImageProvider<Object> image;
  final void Function()? onTap;
  final String text;
  const DrawerIcons({super.key, required this.image, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: onTap,
              child: Container(
                height: 18.h,
                width: 18.w,
                decoration: BoxDecoration(

                  image: DecorationImage(

                    image: image,

                  )
                ),
              ),
            ),
            SizedBox(width: 10.w,),
            CustomText(text: text,fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.white,
              fontFamily: "Montserrat",),
          ],
        )
      ],
    );
  }
}
