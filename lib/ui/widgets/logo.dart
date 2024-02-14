import 'package:flutter/cupertino.dart';

class AppsLogo extends StatelessWidget {
  const AppsLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 276,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/tahseel logo 1.png"),
          )
      ),
    );
  }
}
