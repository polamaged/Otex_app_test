import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';

class Custom_info_quote extends StatelessWidget {
  const Custom_info_quote({
    super.key, required this.text, required this.imagePath,
  });
  final String text;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagePath, width: 24, height: 24,),
        SizedBox(width: 8,),
        Text(text, style: TextStyles.medium14)
      ],
    );
  }
}
