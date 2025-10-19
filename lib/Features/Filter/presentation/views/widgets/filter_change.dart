import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_images.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart' show TextStyles;

class FilterChange extends StatelessWidget {
  const FilterChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
      Image.asset(Assets.imagesRealEstateAgentRounded , width: 24, height: 24,),
      SizedBox(width: 12,),
      Column(
        children: [
          Text('عقارات' , style: TextStyles.medium14,),
          Text('فلل البيع' , style: TextStyles.regular12.copyWith(color: Colors.grey),),
        ],
      ),
      Spacer(),
      Text('تغيير', style: TextStyles.bold14.copyWith(color: Color(0xff3B4CF2)),),
     ],
    );
  }
}