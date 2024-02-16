import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({super.key, this.imageRadius = 20, this.image});

  final double imageRadius;
  final ImageProvider? image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: imageRadius,
      backgroundColor: Colors.white,
      child: CircleAvatar(backgroundImage: image,radius: imageRadius - 2.2,),
    );
  }
}
