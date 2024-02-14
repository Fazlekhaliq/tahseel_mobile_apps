
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tahseel_mobile_apps/ui/auth/sign_up_screen.dart';

class Splashservices{
  void LoginPage(BuildContext context){
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUpScreen()));
    });

  }
}