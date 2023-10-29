import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/common%20widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_app/src/constants/color.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/common%20widgets/fade_in_animation/fade_in_animation_controller.dart';

import '../../../../common widgets/fade_in_animation/animation_design.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: Stack(
        children: [
          //image
          TFadeInAnimation(
            duationInMs: 1600,
            animate: TAnimatePosition(
              topAfter: 0,
              topBefore: -30,
              leftBefore: -30,
              leftAfter: 0,
            ),
            child: const Image(
              image: AssetImage(tSplashTopIcon),
              width: 80.0,
            ),
          ),
          // appname , tagline text
          TFadeInAnimation(
            duationInMs: 2000,
            animate: TAnimatePosition(
              topBefore: 80,
              topAfter: 80,
              leftAfter: tDefaultSize,
              leftBefore: -80,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tAppName,
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(
                  tAppTagLine,
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //image
          TFadeInAnimation(
            duationInMs: 2400,
            animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 100, rightBefore: 0, rightAfter: 0, leftBefore: 0, leftAfter: 0),
            child: const SizedBox(
              height: 450,
              child: Image(
                image: AssetImage(tSplashImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          TFadeInAnimation(
              duationInMs: 2400,
              animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 60, rightBefore: tDefaultSize, rightAfter: tDefaultSize),
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              )),
        ],
      ),
    );
  }
}
