import 'package:flutter/cupertino.dart';

class CustomIcon extends StatelessWidget {
  final  ImageProvider<Object> image;

  const CustomIcon({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 33,
      width: 33,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: image,
          )
      ),
    );
  }
}
