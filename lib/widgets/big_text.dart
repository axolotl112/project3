import 'package:flutter/cupertino.dart';
import 'package:youtubeproject/utils/dimen.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText(
      {Key? key,
      this.color = const Color(0XFF332d2b),
      this.size = 0,
      this.overflow = TextOverflow.ellipsis,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 1,
      text,
      overflow: overflow,
      style: TextStyle(
          color: color,
          fontSize: size == 0 ? Dimensions.font20 : size,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400),
    );
  }
}
