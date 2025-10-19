import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';
import 'package:otex_app_task/Core/widgets/custom_Text_form_field.dart';

class PriceRange extends StatelessWidget {
  const PriceRange({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('السعر', style: TextStyles.medium16.copyWith(color: Colors.grey),),
        SizedBox(height: 12,),
        Row(
          children: [
            Expanded(child: CustomTextFormField(HintText: 'أقل سعر', textInputType: TextInputType.number, label: '')),
             SizedBox(width: 12,),
            Expanded(child: CustomTextFormField(HintText: 'أقصى سعر', textInputType: TextInputType.number, label: '')),
          ],
        )
      ],
    );
  }
}