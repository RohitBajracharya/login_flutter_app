import 'package:flutter/material.dart';
import 'package:login_app/src/features/core/models/dashboard/categories_model.dart';

import '../../../../../constants/color.dart';

class DashbaordCategories extends StatelessWidget {
  const DashbaordCategories({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModel.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 45,
            child: Row(
              children: [
                //JS text
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tDarkColor,
                  ),
                  child: Center(
                    child: Text(
                      list[index].title,
                      style: textTheme.bodyLarge?.apply(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                //lesson name and num of lesson
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        list[index].heading,
                        style: textTheme.bodyLarge,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(list[index].subHeading),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
