import 'package:flutter/material.dart';
import 'package:tahseel_mobile_apps/ui/widgets/text.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';


class CustomTextForm extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String labelText;

  final Widget? suffixIcon;
  const CustomTextForm({super.key,  this.controller, required this.hintText,   required this.labelText, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: labelText,fontSize: 15,fontWeight: FontWeight.w700,
          fontFamily: "Montserrat",
          color: AppColors.textColor
          ,),
        SizedBox(height: 5,),
        TextFormField(
          controller: controller ,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            fillColor: AppColors.profileColor,
            suffixIcon: suffixIcon ,
            filled: true,
            border:  OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),

          ),




        ),

      ],
    );
  }
}
