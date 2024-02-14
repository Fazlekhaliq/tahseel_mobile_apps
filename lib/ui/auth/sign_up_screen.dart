import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tahseel_mobile_apps/ui/auth/forget.dart';
import 'package:tahseel_mobile_apps/ui/widgets/logo.dart';
import 'package:tahseel_mobile_apps/ui/widgets/text.dart';
import 'package:tahseel_mobile_apps/ui/widgets/input_text.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';
import 'package:tahseel_mobile_apps/ui/widgets/custom_Buttom.dart';
import 'package:tahseel_mobile_apps/ui/widgets/custom_box.dart';
import 'package:tahseel_mobile_apps/utils/images.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appsColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
               AppsLogo(),
                SizedBox(height: 7,),
                Container(
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
            
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                    child: Column(
                      children: [
                       InputText(
                           hintText:"Enter Full Name",
                           labelText: CustomText(text: 'Full Name',fontSize: 15,fontWeight: FontWeight.w700,)
                       ),
                        InputText(
                            hintText:"Enter Your Email",
                            labelText: CustomText(text: 'Email',fontSize: 15,fontWeight: FontWeight.w700,)
                        ),
                        InputText(
                            hintText:"Enter Your Phone Number",
                            labelText: CustomText(text: 'Phone Number',fontSize: 15,fontWeight: FontWeight.w700,)
                        ),
                        InputText(
                          suffixIcon: Container(
                            height: 25,
                            width: 25,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image: AssetImage(AppImage.fingerImage)
                             )
                           ),
                          ),
                            hintText:"Enter Your Password",
                            labelText: CustomText(text: 'Password',fontSize: 15,fontWeight: FontWeight.w700,)
                        ),
                        InputText(
                            suffixIcon: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(AppImage.fingerImage)
                                  )
                              ),
                            ),
                            hintText:"Confirm Your Password",
                            labelText: CustomText(text: 'Confirm Password',fontSize: 15,fontWeight: FontWeight.w700,)
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomBox(text: 'Your Civil ID', text2: '(Front)',
            
            
                              ),
                              CustomBox(text: 'Your Civil ID', text2: '(Back)',
            
            
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CustomButtom(text: "Next", onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>ForgetScreen()));
            
                          }),
                        ),
                        SizedBox(height: 6,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(text: "Already have an account?",fontWeight: FontWeight.w400,fontSize: 12,),
                            InkWell(child: CustomText(text: " Sign in",fontWeight: FontWeight.w400,fontSize: 12,color: Colors.red,)),
            
                          ],
                        )
            
            
            
            
                      ],
                    ),
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
