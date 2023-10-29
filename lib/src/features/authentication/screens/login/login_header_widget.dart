import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //image
        Image(
          image: const AssetImage(tWelcomeScreenImage),
          height: size.height * 0.2,
        ),
        //title text
        Text(
          tLoginTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        //subtitle text
        Text(
          tLoginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
