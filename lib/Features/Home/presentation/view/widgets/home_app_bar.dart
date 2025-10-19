import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';
import 'package:otex_app_task/Features/Filter/presentation/views/filter_view.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45, bottom: 12),
      child: Row(
        children: [
          SizedBox(height: 47.5),
          Text('أستكشف العروض', style: TextStyles.medium16),
          Spacer(),
          Text(
            'الكل',
            style: TextStyles.bold16.copyWith(color: Color(0xff808080)),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pushNamed(context, FilterView.routeName);
            },
            icon: Icon(Icons.arrow_forward, color: Color(0xff808080)),
          ),
        ],
      ),
    );
  }
}
