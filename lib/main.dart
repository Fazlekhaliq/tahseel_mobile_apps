import 'package:flutter/material.dart';
import 'package:tahseel_mobile_apps/ui/potolo/potolo_screen.dart';
import 'package:tahseel_mobile_apps/ui/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393,852),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'tahseel',
        theme: ThemeData(
          // textTheme: TextTheme(
          //   headline1:TextStyle(
          //     fontSize: 22.sp,fontWeight: FontWeight.w800,
          //     fontFamily: "Mont bold",
          //     color: Colors.white,
          //   ),
          //   headline2:TextStyle(
          //     fontSize: 15.sp,fontWeight: FontWeight.w700,
          //     fontFamily: "Mont bold",
          //     color: Colors.white,
          //   ),
          // ),
          scaffoldBackgroundColor: AppColors.appsColor,
          appBarTheme: AppBarTheme(
            color: AppColors.appsColor
          )
        ),
        home: SpalshScreen(),

      ),
    );
  }
}
