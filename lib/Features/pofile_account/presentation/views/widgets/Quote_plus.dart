import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_images.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';
import 'package:otex_app_task/Features/pofile_account/presentation/views/widgets/Custom_info_quote_two_line.dart';
import 'package:otex_app_task/Features/pofile_account/presentation/views/widgets/custom_check_list.dart';
import 'package:otex_app_task/Features/pofile_account/presentation/views/widgets/custom_info_quote.dart';

class QuotaPlus extends StatelessWidget {
  const QuotaPlus({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(width: 1, color: const Color(0xFFE6E6E6)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  CustomCheckList(text: title,),
                  Spacer(),
                  Text('3,000ج.م', style: TextStyles.bold16.copyWith(color: Color(0xffF95B1C), decoration: TextDecoration.underline , decorationColor:Color(0xffF95B1C) ),),
                ],
              ),
              SizedBox(height: 12,),
              Divider(
                color: Color(0xffE6E6E6),
                thickness: 1,
              ),
              SizedBox(height: 12,),
              Custom_info_quote(text: 'صلاحية الأعلان 30 يوم', imagePath:Assets.imagesAcute ,),
              SizedBox(height: 8,),
              Custom_info_quote(text: 'رفع لأعلى القائمة كل 3 أيام', imagePath:Assets.imagesRocket,),
              SizedBox(height: 8,),
              CustomInfoQuoteTwoLine(text:'تثبيت فى مقاول صحى' ,secondline:'( خلال ال48 ساعة القادمة )' , imagePath: Assets.imagesKeep),
               SizedBox(height: 8,),
              Custom_info_quote(text: 'ظهور فى كل محافظات مصر', imagePath:Assets.imagesGlobe,),
               SizedBox(height: 8,),
              Custom_info_quote(text: 'أعلان مميز', imagePath:Assets.imagesWorkspacePremium,),
              SizedBox(height: 8,),
              Custom_info_quote(text: 'تثبيت فى مقاول صحى فى الجهراء', imagePath:Assets.imagesKeep ,),
              SizedBox(height: 8,),
              CustomInfoQuoteTwoLine(text:'تثبيت فى مقاول صحى' ,secondline:'( خلال ال48 ساعة القادمة )' , imagePath: Assets.imagesKeep),
            ],
          ),
        ),
      ),
    );
  }
}

