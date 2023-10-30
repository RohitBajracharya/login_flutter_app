import 'package:flutter/material.dart';

import '../../../../../constants/color.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: tCardBgColor,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //bookmark icon and bannerimage
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
                    Flexible(child: Image(image: AssetImage(tBannerImage1))),
                  ],
                ),
                const SizedBox(height: 45),
                //banner title
                Text(
                  tDashboardBannerTitle1,
                  style: textTheme.bodyLarge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                //banner subtitle
                Text(
                  tDashboardBannerSubTitle,
                  style: textTheme.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: tDashboardCardPadding),
        //
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: tCardBgColor,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //bookmark icon and bannerimage
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Image(image: AssetImage(tBookmarkIcon))),
                        Flexible(child: Image(image: AssetImage(tBannerImage2))),
                      ],
                    ),
                    //banner title
                    Text(
                      tDashboardBannerTitle2,
                      style: textTheme.bodyLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                    //banner subtitle
                    Text(
                      tDashboardBannerSubTitle,
                      style: textTheme.bodyMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              //view all button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(tDashboardButton),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
