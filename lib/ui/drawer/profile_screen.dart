

import 'package:flutter/material.dart';
import 'package:tahseel_mobile_apps/ui/drawer/civilid_screen.dart';
import 'package:tahseel_mobile_apps/ui/drawer/profile_pic.dart';

import '../../utils/package.dart';
import '../widgets/text.dart';
import 'components/personal_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.profileColor,
          title: CustomText(text: "My Profile",fontSize: 22.sp,fontWeight: FontWeight.w800,
            fontFamily: "Mont bold",
            color: Colors.white,),
          leading: InkWell(
            onTap: (){
              Scaffold.of(context).openEndDrawer();
            },
            child: Container(
              height: 32.h,
              width: 32.w,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/List.png")
                  )
              ),
            ),
          ),
          bottom:  TabBar(


              labelColor: AppColors.buttonColor,
              indicatorColor: AppColors.buttonColor,
              dividerHeight: 1,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,



              tabs: [

                Tab(
                  child: CustomText(text: "Personal",fontSize: 15,fontWeight: FontWeight.w700,
                    fontFamily: "Montserrat",
                    color: Colors.white,),
                ),
                Tab(
                  child: CustomText(text: "Profile Pic",fontSize: 15,fontWeight: FontWeight.w700,
                    fontFamily: "Montserrat",
                    color: Colors.white,),
                ),
                Tab(
                  child: CustomText(text: "Civil ID",fontSize: 15,fontWeight: FontWeight.w700,
                    fontFamily: "Montserrat",
                    color: Colors.white,),
                ),
              ]),
          actions: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_none,size: 40,color: Colors.white ,),
            )
          ],
        ),
        body: const Column(
          children: [

            Expanded(
              child: TabBarView(children: [
                PerssonalScreen(),
                ProfilePicture(),
               CivilIdScreen(),


              ]),
            )

          ],
        ),
      ),
    );
  }
}
