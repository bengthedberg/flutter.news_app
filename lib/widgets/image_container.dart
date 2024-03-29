import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer(
      {Key? key,
      this.height = 125,
      this.borderRadius = 20,
      required this.width,
      required this.imageUrl,
      this.padding,
      this.margin,
      this.child})
      : super(key: key);

  final double width;
  final double height;
  final String imageUrl;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(borderRadius), // Round the crner of the image
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover, // Stretch the image to full screen
        ),
      ),
      child: child,
    );
  }
}
