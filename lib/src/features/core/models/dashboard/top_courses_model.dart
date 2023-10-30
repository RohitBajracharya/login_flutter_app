import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';

class TopCoursesCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final String image;
  final VoidCallback? onPress;

  TopCoursesCategoriesModel(
    this.title,
    this.heading,
    this.subHeading,
    this.image,
    this.onPress,
  );

  static List<TopCoursesCategoriesModel> list = [
    TopCoursesCategoriesModel("Java Script Crash Course", "3 Sections", "40 Lessons", tTopCourseImage1, null),
    TopCoursesCategoriesModel("Java Crash Course", "3 Sections", "50 Lessons", tTopCourseImage2, null),
    TopCoursesCategoriesModel("HTML/CSS Crash Course", "1 Sections", "30 Lessons", tTopCourseImage3, null),
    TopCoursesCategoriesModel("Flutter Crash Course", "3 Sections", "50 Lessons", tTopCourseImage4, null),
    TopCoursesCategoriesModel("Python Crash Course", "3 Sections", "50 Lessons", tTopCourseImage5, null),
  ];
}
