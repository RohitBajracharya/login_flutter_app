import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            Text(
              tForgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            //subtitle
            Text(
              tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 30.0),
            //option 1
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: tEmail,
              subTitle: tResetViaEmail,
              onTap: () {
                Navigator.pop(context);
                Get.to(const ForgetPasswordMailScreen());
              },
            ),
            const SizedBox(height: 20.0),
            //option 2
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: tPhoneNo,
              subTitle: tResetViaPhone,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
