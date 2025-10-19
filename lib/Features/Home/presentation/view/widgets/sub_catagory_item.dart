import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';

class SubCatagoryItem extends StatelessWidget {
  const SubCatagoryItem({super.key, required this.imagePath, required this.text});
  final String imagePath;
  final String text ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 80,
            decoration: ShapeDecoration(
              color: Color(0xFFE6E6E6),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4), ),
            ),
            child:Image.asset(imagePath, fit: BoxFit.fill,),
          ),
         const SizedBox(height: 8,),
          Text(text ,style: TextStyles.regular12,textAlign: TextAlign.center, ),
        ],
      ),
    );
  }
}
