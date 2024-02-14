import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tahseel_mobile_apps/ui/auth/sign_in.dart';
import 'package:tahseel_mobile_apps/ui/widgets/input_text.dart';
import 'package:tahseel_mobile_apps/ui/widgets/custom_Buttom.dart';
import 'package:tahseel_mobile_apps/ui/widgets/logo.dart';
import 'package:tahseel_mobile_apps/ui/widgets/text.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appsColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
              SizedBox(height: 140,),
              AppsLogo(),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 20),
                child: Container(
                  height: 327,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
          
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      CustomText(text: "Forgot Password?",fontSize: 30,fontWeight: FontWeight.w800,
                      color: AppColors.buttonColor,),
                      SizedBox(height: 30,),
                      InputText(hintText: "Enter Your Email", labelText: Text("Email")),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                        child: CustomButtom(text: "Reset Password", onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>SignInScreen()));
          
                        }),
                      )
                    ],
                  ),
                ),
              )
          
            ],
          ),
        ),
      ),
    );
  }
}
