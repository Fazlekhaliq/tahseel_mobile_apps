import 'package:flutter/material.dart';

import '../../utils/package.dart';
import '../widgets/text.dart';

class CivilIdScreen extends StatefulWidget {
  const CivilIdScreen({super.key});

  @override
  State<CivilIdScreen> createState() => _CivilIdScreenState();
}

class _CivilIdScreenState extends State<CivilIdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 115.h,
                  width: 190.w,
                  decoration: BoxDecoration(
                      color: AppColors.profileColor,
                      borderRadius: BorderRadius.circular(5)

                  ),
                  child: Center(child: Icon(Icons.camera_alt_rounded,size: 50,color: Colors.grey.shade400,)),

                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    CustomText(text: "Your Civil ID",fontWeight: FontWeight.w400,fontSize: 15,
                    color: AppColors.textColor,),
                    SizedBox(height: 8,),
                    CustomText(text: "(Front)",fontWeight: FontWeight.w400,fontSize: 15,
                        color: AppColors.textColor),
                  ],
                )
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [

                Column(
                  children: [
                    CustomText(text: "Your Civil ID",fontWeight: FontWeight.w400,fontSize: 15,
                      color: AppColors.textColor,),
                    SizedBox(height: 8,),
                    CustomText(text: "(Front)",fontWeight: FontWeight.w400,fontSize: 15,
                        color: AppColors.textColor),
                  ],
                ),
                SizedBox(width: 40,),
                Container(
                  height: 115.h,
                  width: 190.w,
                  decoration: BoxDecoration(
                      color: AppColors.profileColor,
                      borderRadius: BorderRadius.circular(5)

                  ),
                  child: Center(child: Icon(Icons.camera_alt_rounded,size: 50,color: Colors.grey.shade400,)),

                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
