import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tahseel_mobile_apps/ui/home/Home_screen.dart';
import 'package:tahseel_mobile_apps/ui/widgets/input_text.dart';
import 'package:tahseel_mobile_apps/ui/widgets/custom_Buttom.dart';
import 'package:tahseel_mobile_apps/ui/widgets/Custom_icon.dart';
import 'package:tahseel_mobile_apps/ui/widgets/logo.dart';
import 'package:tahseel_mobile_apps/ui/widgets/text.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';
import 'package:tahseel_mobile_apps/utils/images.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appsColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40,),
               AppsLogo(),
                SizedBox(height: 30,),
                Container(
                  height: 524,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
            
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      InputText(hintText: "Enter Your Email", labelText: CustomText(text: 'Email',fontWeight: FontWeight.w700,
                      fontSize: 15,)),
                      SizedBox(height: 10,),
                      InputText(hintText: "Enter Your Password", labelText: CustomText(text: 'Password',fontWeight: FontWeight.w700,
                        fontSize: 15,)),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: AppColors.appsColor,)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
            
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(
                                  color: AppColors.buttonColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          CustomText(text: "Remember Password",fontSize: 12,fontWeight: FontWeight.w400,),
                          SizedBox(width: 5,),
                          CustomText(text: "Forget Password?",fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.buttonColor,)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 20),
                        child: CustomButtom(text: "Sign in", onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
            
                        }),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                           height: 1,
                            width: 120,
                            color: Colors.black,
                          ),
            
                          CustomText(text: "or Sign up with",fontWeight: FontWeight.w400,fontSize: 12,),
                          Container(
                            height: 1,
                            width: 120,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIcon(image: AssetImage(AppImage.fbImage)),
                          SizedBox(width: 10,),
                          CustomIcon(image: AssetImage(AppImage.twImage)),
                          SizedBox(width: 10,),
                          CustomIcon(image: AssetImage(AppImage.googleImage)),
                          SizedBox(width: 10,),
                          CustomIcon(image: AssetImage(AppImage.appleImage)),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: "Don’t have an account?",fontWeight: FontWeight.w400,fontSize: 12,),
                          CustomText(text: " Sign up",fontWeight: FontWeight.w400,fontSize: 12,color: Colors.red,),
            
                        ],
                      )
            
            
                    ],
                  ),
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
