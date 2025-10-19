import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_images.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart' show TextStyles;

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
      Image.asset(Assets.imagesLocationOn , width: 24, height: 24,),
      SizedBox(width: 12,),
      Column(
        children: [
          Text('الموقع' , style: TextStyles.medium14,),
          Text('مصر' , style: TextStyles.regular12.copyWith(color: Colors.grey),),
        ],
      ),
      Spacer(),
      Icon(Icons.chevron_right),
     ],
    );
  }
}