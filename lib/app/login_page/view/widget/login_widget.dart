import 'package:flutter/material.dart';

class CustomPosition extends StatelessWidget {
  final double left;
  final double width;
  final double height;
  final String assetImage;
  const CustomPosition({
    Key? key,
    required this.assetImage,
    required this.left,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: left,
        width: width,
        height: height,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(assetImage))),
        ));
  }
}
  // left: 30,
  //       width: 80,
  //       height: 200,