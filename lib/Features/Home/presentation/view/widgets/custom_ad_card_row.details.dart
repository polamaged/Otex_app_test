
import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';

class CustomRowAdCard extends StatelessWidget {
  const CustomRowAdCard({
    super.key,
    required this.text,
    required this.imagePath, required this.color,
  });

  final String text;
  final String imagePath;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyles.medium16.copyWith(color: color),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
        ),
        const SizedBox(width: 4),
        Image.asset(imagePath, width: 20, height: 20),
      ],
    );
  }
}
