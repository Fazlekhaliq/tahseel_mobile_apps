

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tahseel_mobile_apps/ui/widgets/custom_Buttom.dart';
import 'package:tahseel_mobile_apps/ui/widgets/text.dart';
import 'package:images_picker/images_picker.dart';

import '../../utils/package.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({super.key});

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {


  @override
  Widget build(BuildContext context) {
    // File? _image ;
    // final picker = ImagePicker();
    // Future getImageGallery()async{
    //   final pickedFile = await picker.pickImage(source: ImageSource.gallery , imageQuality: 80);
    //   setState(() {
    //     if(pickedFile != null){
    //       _image = File(pickedFile.path);
    //     }else {
    //       print('no image picked');
    //     }
    //   });
    //
    // }
    return Scaffold(
      body: Center(
        child: Column(

          children: [
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
               // getImageGallery();


              },
              child: Container(
                height: 100.h,
                width: 100.w,
                decoration: const BoxDecoration(
                  color: AppColors.profileColor,
                  shape: BoxShape.circle,
                ),
                child: 
                Center(child: Icon(Icons.camera_alt)),
              ),
            ),
            const Column(

              children: [
                CustomText(text: "Note: Please upload JPG/PNG",fontWeight: FontWeight.w400,
                  fontSize: 12,color: Colors.white,),
                SizedBox(height: 10,),
                Center(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text: "of less than",fontWeight: FontWeight.w400,
                        fontSize: 12,color: Colors.white,),
                      SizedBox(width: 3,),
                      CustomText(text: "2 MB",fontWeight: FontWeight.w400,
                        fontSize: 12,color: AppColors.textColor,)
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 200,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 100),
              child: CustomButtom(text: "Save Changes", onTap: (){

              }),
            )
          ],
        ),
      ),
    );
  }
}
