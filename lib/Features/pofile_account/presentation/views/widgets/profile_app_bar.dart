import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.chevron_left, color: Colors.black, size: 32),
              ),
              SizedBox(width: 12),
              Text('أختر الباقات اللى تناسبك', style: TextStyles.meduim24),
            ],
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'اختار من باقات التمييز بل اسفل اللى تناسب احتياجاتك',
              style: TextStyles.regular14.copyWith(color: Color(0xff84878F)),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
