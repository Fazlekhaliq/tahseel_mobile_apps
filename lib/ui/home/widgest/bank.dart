import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tahseel_mobile_apps/utils/apps_colors.dart';
import 'package:tahseel_mobile_apps/utils/images.dart';

class Bank extends StatelessWidget {
  const Bank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      width: 393.w,
      decoration: BoxDecoration(
        color: AppColors.banksColor,
        image: DecorationImage(
          image: AssetImage(AppImage.bankImage)
        )
      ),
    );
  }
}
