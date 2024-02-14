

import 'package:flutter/material.dart';

import '../../utils/package.dart';
import '../widgets/text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   GlobalKey<ScaffoldState>_Scaffoldkey=GlobalKey<ScaffoldState>();
  bool isSelected = false;

  void toggleSwitch(bool value){
    setState(() {
      isSelected=!isSelected;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        key: _Scaffoldkey,
        appBar: AppBar(
          leading: IconButton(onPressed: (){
             _Scaffoldkey.currentState!.openDrawer();
          }, icon: Icon(Icons.menu,color: Colors.white,size: 30,)),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
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
              ),
            )
          ],
        ),
        drawer: Drawer(

            width: 262.w,
          shape: RoundedRectangleBorder(

          ),
          child: ListView(
            children: [
              Container(
                //height: 242.h,
                width: 264.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImage.drawerImage),
                    fit: BoxFit.cover,
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      height: 68.h,
                      width: 68.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(AppImage.profileImage),

                        )
                      ),
                    ),
                    CustomText(text: "Yaqoub Alnasser",fontSize: 18,fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat",
                      color: Colors.white,),
                    CustomText(text: "Y.alnasser@yemnak.kw",fontSize: 12,fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat",
                      color: Colors.white,),
                    Container(
                      height: 32.h,
                      width: 92.w,
                      decoration: BoxDecoration(
                        color: AppColors.buttonColor,
                        borderRadius: BorderRadius.circular(10).w,

                      ),
                      child: Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>ProfileScreen()));
                          },
                          child: CustomText(text: 'Profile',fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontFamily: "Montserrat",),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(text: 'Fingerlock:',fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontFamily: "Montserrat",),
                          SizedBox(height: 10,),
                          Switch(
                            splashRadius: 1,


                            value: isSelected , onChanged: toggleSwitch,activeColor: Colors.orange,),


                        ],
                      ),
                    ),
                    Container(
                      height: 610.h,
                      width: 262.w,
                      decoration: BoxDecoration(
                        color: AppColors.appsColor
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                        child: Column(
                          children: [
                            DrawerIcons(
                              onTap: (){

                              },
                                image: AssetImage(AppImage.homeImage),
                                text: "Home"
                            ),
                            SizedBox(height: 15.h,),
                            DrawerIcons(
                                onTap: (){

                                },
                                image: AssetImage(AppImage.deshboardImage),
                                text: "Dashboard"
                            ),
                            SizedBox(height: 15.h,),
                            DrawerIcons(
                                onTap: (){

                                },
                                image: AssetImage(AppImage.invoicesImage),
                                text: "Invoices"
                            ),
                            SizedBox(height: 15.h,),
                            DrawerIcons(
                                onTap: (){

                                },
                                image: AssetImage(AppImage.invoicesImage),
                                text: "Users"
                            ),
                            SizedBox(height: 15.h,),
                            DrawerIcons(
                                onTap: (){

                                },
                                image: AssetImage(AppImage.invoicesImage),
                                text: "Wallet"
                            ),
                            SizedBox(height: 15.h,),
                            DrawerIcons(
                                onTap: (){

                                },
                                image: AssetImage(AppImage.invoicesImage),
                                text: "Transactions"
                            ),
                            SizedBox(height: 15.h,),
                            DrawerIcons(
                                onTap: (){

                                },
                                image: AssetImage(AppImage.invoicesImage),
                                text: "Invoice Settings"
                            ),
                            SizedBox(height: 15.h,),
                            DrawerIcons(
                                onTap: (){

                                },
                                image: AssetImage(AppImage.invoicesImage),
                                text: "Bussiness Info"
                            ),
                            SizedBox(height: 15.h,),
                            DrawerIcons(
                                onTap: (){

                                },
                                image: AssetImage(AppImage.invoicesImage),
                                text: "Bank Info"
                            ),
                            SizedBox(height: 100,),
                            draButton(text: 'Language', text2: 'English',
                            icon: (Icons.arrow_drop_down_sharp)),
                            SizedBox(height: 15.h,),
                            draButton(text: 'Logout', text2: '',
                                icon: (Icons.logout)),
                          ],
                        ),
                      ),
                    ),


                  ],

                ),
              )
            ],
          ),

        ),
        backgroundColor: AppColors.appsColor,
      
      
      
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
          child: Column(

            children: [

              SizedBox(height: 20.h,),
              profile(),
              SizedBox(height: 20.h,),
              wellat(),
              SizedBox(height: 20,),
              GridViewss(),

              HomeIcon(),
              SizedBox(height: 30,),
              Bank(),



            ],
          ),
        ),
      ),
    );
  }
}
