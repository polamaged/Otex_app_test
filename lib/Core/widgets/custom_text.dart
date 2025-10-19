
import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.color, required this.textAlign});
  final String text;
  final Color color;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyles.semiBold16.copyWith(
        color: color,
      ),
    );
  }
}