import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtubeproject/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimen.dart';
import 'Icon_and_text_widgets.dart';
import 'big_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                        size: 15,
                      )),
            ),
            SizedBox(
              width: Dimensions.height10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: Dimensions.height10,
            ),
            SmallText(text: "1287"),
            SizedBox(
              width: Dimensions.height10,
            ),
            SmallText(text: "Comments")
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
                icon: Icons.circle_sharp,
                text: "normal",
                iconColor: AppColors.iconColor1),
            IconAndText(
                icon: Icons.location_on,
                text: "32 min",
                iconColor: AppColors.mainColor),
            IconAndText(
                icon: Icons.access_time_rounded,
                text: "normal",
                iconColor: AppColors.iconColor2),
          ],
        ),
      ],
    );
  }
}
