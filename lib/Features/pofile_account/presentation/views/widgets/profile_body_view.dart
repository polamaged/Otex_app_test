import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_images.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';
import 'package:otex_app_task/Core/widgets/custom_buttom.dart';
import 'package:otex_app_task/Features/pofile_account/presentation/views/widgets/Quote_plus.dart';
import 'package:otex_app_task/Features/pofile_account/presentation/views/widgets/quote_extra.dart';
import 'package:otex_app_task/Features/pofile_account/presentation/views/widgets/quota_basic.dart';
import 'package:otex_app_task/Features/pofile_account/presentation/views/widgets/profile_app_bar.dart';

class ProfileBodyView extends StatelessWidget {
  const ProfileBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 17.5),
            ProfileAppBar(),
            SizedBox(height: 12),
            QuotaBasic(
              title: 'اساسية',
              infotitle: 'صلاحية الأعلان 30 يوم',
              imagePath: Assets.imagesAcute,
            ),
            SizedBox(height: 24),
            QuotaExtra(title: 'أكسترا'),
            SizedBox(height: 24),
            QuotaPlus(title: 'بلس'),
            SizedBox(height: 24),
            QuotaPlus(title: 'سوبر'),
            SizedBox(height: 52),
            Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: Color(0xFFE6E6E6),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('باقات مخصصة لك' , style: TextStyles.medium14,),
                    SizedBox(height: 4),
                     Text('تواصل معنا لأختيار الباقة المناسبة لك' , style: TextStyles.regular12,),
                     SizedBox(height: 4),
                      Text('فريق المبيعات' , style: TextStyles.bold16.copyWith(color: Color(0xff0079FE)),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 199),
            CustomButtom(onPressed: () {
              
            }, text: 'التالي' , icon: Icons.arrow_forward,),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
