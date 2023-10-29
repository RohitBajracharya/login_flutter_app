import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    this.imageColor,
    this.heightBetween,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageHeight = 0.2,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textAlign,
  });

  final String image, title, subTitle;
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        //image
        Image(
          image: AssetImage(image),
          height: size.height * imageHeight,
        ),
        SizedBox(height: heightBetween),
        //title text
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        //subtitle text
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: textAlign,
        ),
      ],
    );
  }
}
