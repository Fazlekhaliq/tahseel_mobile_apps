
import 'package:flutter/material.dart';
import 'package:tahseel_mobile_apps/ui/splash_services/splash_services.dart';
import 'package:tahseel_mobile_apps/utils/images.dart';


class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  Splashservices splashservices=Splashservices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashservices.LoginPage(context);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.splashImage),
            fit: BoxFit.cover,
          )
      ),
    );
  }
}