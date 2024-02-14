import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tahseel_mobile_apps/ui/drawer/components/customtextform.dart';
import 'package:tahseel_mobile_apps/ui/widgets/custom_Buttom.dart';
import 'package:tahseel_mobile_apps/ui/widgets/input_text.dart';
import 'package:tahseel_mobile_apps/ui/widgets/text.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';

class PerssonalScreen extends StatefulWidget {
  const PerssonalScreen({super.key});

  @override
  State<PerssonalScreen> createState() => _PerssonalScreenState();
}

class _PerssonalScreenState extends State<PerssonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w),
        child: Column(
          children: [
            SizedBox(height: 20,),

            CustomTextForm(hintText: "tahseeel@exapmle.com", labelText: "Email Address"),
            SizedBox(height: 10,),
            CustomTextForm(hintText: "Yaqoub Alnasser", labelText: "Full Name"),
            SizedBox(height: 10,),
            CustomTextForm(
              suffixIcon: Icon(Icons.arrow_drop_down_sharp,size: 40.sp,color: Colors.white,),
                hintText: "Ooredo", labelText: "Mobile Network"),
            SizedBox(height: 10,),
            CustomTextForm(

                hintText: "966 66804030", labelText: "Phone Number"),
            SizedBox(height: 20.h,),
            Container(
              height: 45.h,
              width: 160.w,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(12).w,


              ),
             child: Center(child: CustomText(text: 'Change Password',fontSize: 15,fontWeight: FontWeight.w700,
                 color: Colors.white,)),
            ),
            SizedBox(height: 100,),
            CustomButtom(text: "Save Changes", onTap: (){

            })

          ],
        ),
      ),
    );
  }
}
