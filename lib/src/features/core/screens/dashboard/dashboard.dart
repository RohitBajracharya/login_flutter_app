import 'package:flutter/material.dart';
import 'package:login_app/src/constants/color.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/course.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/searchbox.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(
                tDashboardTitle,
                style: textTheme.bodyMedium,
              ),
              //sub title
              Text(
                tDashboardHeading,
                style: textTheme.titleMedium?.apply(color: Colors.black),
              ),
              const SizedBox(height: tDashboardPadding),
              //search box
              DashboardSearchBox(textTheme: textTheme),
              const SizedBox(height: tDashboardPadding),
              //categories
              DashbaordCategories(textTheme: textTheme),
              const SizedBox(height: tDashboardPadding),
              //banners
              DashboardBanners(textTheme: textTheme),
              const SizedBox(height: tDashboardPadding),
              // top courses
              //title text
              Text(
                tDashboardTopCourses,
                style: textTheme.headlineSmall?.apply(fontSizeFactor: 1.2),
              ),
              //course banenr
              DashboardCourse(textTheme: textTheme)
            ],
          ),
        ),
      ),
    );
  }
}
