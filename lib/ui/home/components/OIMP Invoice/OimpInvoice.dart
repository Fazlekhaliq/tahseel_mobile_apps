import 'package:flutter/material.dart';

import '../../../../utils/package.dart';
import '../../../drawer/components/customtextform.dart';
import '../../../widgets/custom_Buttom.dart';
import '../../../widgets/text.dart';

class OimpLnvoice extends StatefulWidget {
  const OimpLnvoice({super.key});

  @override
  State<OimpLnvoice> createState() => _OimpLnvoiceState();
}

class _OimpLnvoiceState extends State<OimpLnvoice> {
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
              CustomText(text: "OIMP Invoice",
                fontSize: 22.sp,fontWeight: FontWeight.w800,
                fontFamily: "Mont bold",
                color: Colors.white,
              ),
              SizedBox(height: 15,),
          
              CustomTextForm(hintText: "01-Nov-2022", labelText: "Expiry Date"),
              SizedBox(height: 15,),
              CustomTextForm(
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0,horizontal: 12),
                  child: CustomText(text: "For Unlimited use 0 (Zero)",fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: Colors.red,),
                ),
                  hintText: "0", labelText: "Max No. of Times"),
              SizedBox(height: 15,),
              CustomText(text: "Invoice Details",
                fontSize: 18.sp,fontWeight: FontWeight.w800,
                fontFamily: "Mont bold",
                color: Colors.white,
              ),
              SizedBox(height: 15,),
              CustomTextForm(hintText: "Lorem Ipsum", labelText: "Amount"),
              SizedBox(height: 10,),
              CustomText(text: "Message",fontSize: 15,fontWeight: FontWeight.w700,
                fontFamily: "Montserrat",
                color: AppColors.textColor
                ,),
              SizedBox(height: 5,),
              Container(
                height: 75.h,
          
                decoration: BoxDecoration(
                  color: AppColors.profileColor,
                  borderRadius: BorderRadius.circular(10).w,
          
                ),
                child: TextFormField(
          
                  decoration: InputDecoration(
          
                    contentPadding: EdgeInsets.all(12),
                    hintText: "Lorem ipsum dolor sit de van wa cheff...",
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
