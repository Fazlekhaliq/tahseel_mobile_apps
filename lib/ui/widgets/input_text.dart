import 'package:flutter/material.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';


class InputText extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Widget labelText;

  final Widget? suffixIcon;
  const InputText({super.key,  this.controller, required this.hintText,   required this.labelText, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: labelText,),
          SizedBox(height: 5,),
          TextFormField(
            controller: controller ,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(12),
              hintText: hintText,
              hintStyle: TextStyle(
                color: AppColors.textColor,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              fillColor: AppColors.appsColor,
              suffixIcon: suffixIcon ,
              filled: true,
              border:  OutlineInputBorder(
                  borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),

            ),




          ),

        ],
      ),
    );
  }
}
