import 'package:flutter/material.dart';
import 'package:login_app/src/common%20widgets/form/form_header_widget.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/signup/widgets/signup_footer_widget.dart';
import 'package:login_app/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: const Column(
              children: [
                //header
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                //form
                SignUpFormWidget(),
                //signup footer
                SignupFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
