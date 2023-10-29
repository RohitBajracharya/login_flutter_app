import 'package:flutter/material.dart';
import 'package:login_app/src/constants/sizes.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';

class SignupFooterWidget extends StatelessWidget {
  const SignupFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(
          height: tDefaultSize - 10,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(tGoogleLogoImage),
              width: 20.0,
            ),
            label: Text(tSignInWithGoogle.toUpperCase()),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: tAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(text: tLogin.toUpperCase()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
