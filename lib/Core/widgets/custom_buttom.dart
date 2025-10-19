import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_colors.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
  });

  final VoidCallback onPressed;
  final String text;
  final IconData? icon; // Optional icon

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff0079FE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: TextStyles.bold19.copyWith(color: Colors.white),
            ),
            SizedBox(width: icon == null ? 0 : 4),
            if (icon != null) ...[
              Icon(icon, color: Colors.white),
              const SizedBox(width: 8),
            ],
          ],
        ),
      ),
    );
  }
}
