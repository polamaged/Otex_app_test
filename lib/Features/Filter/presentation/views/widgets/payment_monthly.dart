import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';
import 'package:otex_app_task/Core/widgets/custom_Text_form_field.dart';

class PaymentMonthly extends StatelessWidget {
  const PaymentMonthly({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('الأقساط الشهرية', style: TextStyles.medium16.copyWith(color: Colors.grey),),
        const SizedBox(height: 12,),
        Row(
          children: [
            Expanded(child: CustomTextFormField(HintText: '', textInputType: TextInputType.number, label: '')),
            SizedBox(width: 12,),
            Expanded(child: CustomTextFormField(HintText: '', textInputType: TextInputType.number, label: '')),
          ],
        )
      ],
    );
  }
}