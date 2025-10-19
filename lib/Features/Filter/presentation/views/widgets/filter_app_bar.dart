import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';

class FilterAppBar extends StatelessWidget {
  const FilterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.close)),
        SizedBox(width: 12,),
        Text('فلترة', style: TextStyles.meduim24,),
        Spacer(),
        Text('رجوع للأفتراضى', style: TextStyles.bold16.copyWith(color: Color(0xff0079FE)),),
      ],
    );
  }
}