import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtubeproject/utils/colors.dart';
import 'package:youtubeproject/utils/dimen.dart';
import 'package:youtubeproject/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String seconedhalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      seconedhalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      seconedhalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: seconedhalf.isEmpty
          ? SmallText(
              height: 1.8,
              color: AppColors.paraColor,
              size: Dimensions.font16,
              text: firstHalf)
          : Column(
              children: [
                SmallText(
                    color: AppColors.paraColor,
                    size: Dimensions.font16,
                    text: hiddenText
                        ? (firstHalf + "....")
                        : (firstHalf + seconedhalf)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "Show more",
                        color: AppColors.mainColor,
                      ),
                      Icon(Icons.arrow_drop_down, color: AppColors.mainColor)
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
