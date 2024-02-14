import 'package:flutter/material.dart';

import '../../../../utils/package.dart';
import '../../../drawer/components/customtextform.dart';
import '../../../widgets/custom_Buttom.dart';
import '../../../widgets/text.dart';

class RecurringScreen extends StatefulWidget {
  const RecurringScreen({super.key});

  @override
  State<RecurringScreen> createState() => _RecurringScreenState();
}

class _RecurringScreenState extends State<RecurringScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.profileColor,
        leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 20.h,
              width: 20.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image:  AssetImage("assets/Vector (5).png"),
                  )
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              CustomText(text: "Create Recurring Invoice",
                fontSize: 22.sp,fontWeight: FontWeight.w800,
                fontFamily: "Mont bold",
                color: Colors.white,
              ),
              SizedBox(height: 10,),
              CustomText(text: "Customer Details",
                fontSize: 18.sp,fontWeight: FontWeight.w700,
                fontFamily: "Mont bold",
                color: Colors.white,
              ),
              SizedBox(height: 20,),
              CustomTextForm(hintText: "Yaqoub Alnasser", labelText: "Full Name"),
              SizedBox(height: 10,),

              CustomTextForm(hintText: "01", labelText: "Reference No."),
              SizedBox(height: 10,),
              CustomText(text: "Invoice Repittition Details",
                fontSize: 18.sp,fontWeight: FontWeight.w700,
                fontFamily: "Mont bold",
                color: Colors.white,
              ),
              SizedBox(height: 10,),
              CustomTextForm(hintText: "Start Date", labelText: ""),
              CustomTextForm(hintText: "Expiry Days (Up-to 30 Days)", labelText: ""),
              CustomTextForm(
                suffixIcon: Icon(Icons.arrow_drop_down_sharp,color: Colors.white,),
                  hintText: "Select Repeat", labelText: ""),
              CustomTextForm(
                  suffixIcon: Icon(Icons.arrow_drop_down_sharp,color: Colors.white,),
                  hintText: "Select Times", labelText: ""),

              SizedBox(height: 10,),


              Container(
                height: 75.h,

                decoration: BoxDecoration(
                  color: AppColors.profileColor,
                  borderRadius: BorderRadius.circular(10).w,

                ),
                child: TextFormField(

                  decoration: InputDecoration(

                    contentPadding: EdgeInsets.all(12),
                    hintText: "Message",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    fillColor: AppColors.profileColor,

                    filled: true,
                    border:  OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),

                  ),




                ),
              ),
              SizedBox(height: 20.h,),


              CustomText(text: "Invoice Items",
                fontSize: 18.sp,fontWeight: FontWeight.w700,
                fontFamily: "Mont bold",
                color: Colors.white,
              ),
              SizedBox(height: 20,),
              CustomTextForm(hintText: "Lorem ipsum", labelText: "Item/Service Name"),
              SizedBox(height: 20.h,),
              CustomTextForm(
                suffixIcon: Icon(Icons.arrow_drop_down_sharp,color: Colors.white,),
                  hintText: "Lorem ipsum", labelText: "Unit Price"),
              SizedBox(height: 15,),
              Center(
                child: Container(
                  height: 45.h,
                  width: 165.w,
                  decoration: BoxDecoration(
                    color: AppColors.buttonColor,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: CustomText(text: "add",fontSize: 18,fontWeight: FontWeight.w700,
                      color: Colors.white,),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              CustomTextForm(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 14),
                    child: CustomText(text: 'Qty-0',color: Colors.white,),
                  ),
                  hintText: "Total -KWD 0.000", labelText: ""),


              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 41.h,
                    width: 61.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImage.responseImage1),
                        )
                    ),
                  ),
                  Container(
                    height: 41.h,
                    width: 61.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImage.responseImage2),
                        )
                    ),
                  ),
                  Container(
                    height: 41.h,
                    width: 61.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImage.responseImage3),
                        )
                    ),
                  ),
                  Container(
                    height: 41.h,
                    width: 61.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImage.responseImage3),
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100.h,),

              CustomButtom(text: "Send Invoice", onTap: (){

              }),
              SizedBox(height: 30,),




            ],
          ),
        ),
      ),
    );
  }
}
