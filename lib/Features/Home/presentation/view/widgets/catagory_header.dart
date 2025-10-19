import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_images.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';

class CatagoryHeader extends StatelessWidget {
  const CatagoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: Color(0xFFF7F4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Image.asset(Assets.imagesCheck , width: 16, height: 11,),
            SizedBox(width: 8,),
            Text('شحن مجانى',style:TextStyles.regular12.copyWith(color: Color(0xff3A813F)),),
            Spacer(),
            Text('لأى عرض تطلبه دلوقتى !',style:TextStyles.regular10),
            
          ],
        ),
      ),
    );
  }
}
