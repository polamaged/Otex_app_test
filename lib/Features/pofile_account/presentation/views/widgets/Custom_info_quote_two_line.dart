import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';

class CustomInfoQuoteTwoLine extends StatelessWidget {
  const CustomInfoQuoteTwoLine({
    super.key, required this.text, required this.imagePath, required this.secondline,
  });
  final String text;
  final String secondline;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagePath, width: 24, height: 24,),
        SizedBox(width: 8,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(text, style: TextStyles.medium14),
            Text(secondline, style: TextStyles.medium14.copyWith(color: Color(0xFFFF4144)),),
          ],
        ),
      ],
    );
  }
}
