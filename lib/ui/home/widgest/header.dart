import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: (){
            
          },
          child: Container(
            height: 32.h,
            width: 32.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/List.png")
                )
            ),
          ),
        ),
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(5).w,


          ),
          child: Stack(
            children: [
              Center(child: Icon(Icons.notifications_none,color: Colors.white,)),


            ],
          )
        )

      ],
    );
  }
}
