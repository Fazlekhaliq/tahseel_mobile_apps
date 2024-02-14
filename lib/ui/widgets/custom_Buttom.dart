import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tahseel_mobile_apps/ui/widgets/text.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const CustomButtom({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
         height: 46,

        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(10),

        ),
        child: Center(
          child: CustomText(text: text,fontSize: 22,fontWeight: FontWeight.w700,
          color: Colors.white,),
        ),
      ),
    );
  }
}
