import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tahseel_mobile_apps/ui/widgets/text.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';


class CustomBox extends StatelessWidget {
  final String text;
  final String text2;
   CustomBox({super.key, required this.text, required this.text2});


  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        CustomText(text: text,fontWeight: FontWeight.w400,fontSize: 15,),
        CustomText(text: text2,fontWeight: FontWeight.w400,fontSize: 15,),
        SizedBox(height: 5,),
        Container(
          height: 82,
          width: 137,
          decoration: BoxDecoration(
            color: AppColors.appsColor,
            borderRadius: BorderRadius.circular(5)

          ),
          child: Center(child: Icon(Icons.camera_alt_rounded,size: 50,color: Colors.grey.shade400,)),

        )
      ],
    );
  }
}
