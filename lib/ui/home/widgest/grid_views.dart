import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tahseel_mobile_apps/ui/home/components/recurring/recurring_screen.dart';

import 'package:tahseel_mobile_apps/ui/home/model.dart';

import 'package:tahseel_mobile_apps/ui/widgets/text.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';

import '../components/OIMP Invoice/OimpInvoice.dart';
import '../components/Standard Invoice/Standard_Invoice.dart';
import '../components/quick_response/quick_response.dart';

class GridViewss extends StatefulWidget {
  const GridViewss({super.key});

  @override
  State<GridViewss> createState() => _GridViewssState();
}

class _GridViewssState extends State<GridViewss> {
  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> screenRoutes = [
      {'route': QuickResponse(),},
      {'route': StandardInvoice(),},
      {'route': OimpLnvoice(),},
      {'route': RecurringScreen(),},
      {'route': QuickResponse(),},
      {'route': StandardInvoice(),},
      {'route': QuickResponse(),},
      {'route': StandardInvoice(),}

      // Add more screen routes as needed
    ];

    return SizedBox(
      height: 360,
      child: GridView.builder(

        itemCount: responsehome.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            mainAxisExtent: 100,
          ),
          itemBuilder:(_,index){
            final Map<String, dynamic> routeData = screenRoutes[index];
          return GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => routeData['route']),
              );

            },
            child: Container(

              decoration: BoxDecoration(
                color: AppColors.profileColor,
                borderRadius: BorderRadius.circular(10).w

              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(responsehome[index].path)
                      )
                    ),
                    ),
                  SizedBox(height: 10.h,),
                  CustomText(text: responsehome[index].text,fontSize: 10,fontWeight: FontWeight.w400,color: Colors.white
                    ,
                  fontFamily: "Montserrat",)
                ],
              ),
            ),
          );

          }
      ),
    );
  }
}
