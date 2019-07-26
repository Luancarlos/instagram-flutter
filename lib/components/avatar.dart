import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double width;
  final double height;
  final String image;

  Avatar({this.width, this.height, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: Colors.white),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(image)
        )
      ),
    );;
  }
}