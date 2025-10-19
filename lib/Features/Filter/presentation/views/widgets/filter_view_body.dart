import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';
import 'package:otex_app_task/Core/widgets/custom_buttom.dart';
import 'package:otex_app_task/Features/Filter/presentation/views/widgets/filter_app_bar.dart';
import 'package:otex_app_task/Features/Filter/presentation/views/widgets/filter_change.dart';
import 'package:otex_app_task/Features/Filter/presentation/views/widgets/location_view.dart';
import 'package:otex_app_task/Features/Filter/presentation/views/widgets/payment_monthly.dart';
import 'package:otex_app_task/Features/Filter/presentation/views/widgets/price_range.dart';
import 'package:otex_app_task/Features/Filter/presentation/views/widgets/type_real_state.dart';

class FilterViewBody extends StatelessWidget {
  const FilterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12,),
            FilterAppBar(),
             SizedBox(height: 32,),
             Text('الفئة', style: TextStyles.medium16,),
             SizedBox(height: 12,),
             FilterChange(),
             SizedBox(height: 20,),
             Divider(color: Color(0xffE6E6E6),thickness: 1,),
            SizedBox(height: 20,),
            LocationView(),
            SizedBox(height: 20,),
            Divider(color: Color(0xffE6E6E6),thickness: 1,),
            SizedBox(height: 20,),
            PaymentMonthly(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text('النوع', style: TextStyles.medium16.copyWith(color: Colors.grey),),
            ),
            SizedBox(height: 12,),
            TypesGeneral(categories: ['الكل', 'توين هاوس', 'فيلا منفصلة', 'تاون هاوس'],),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text('عدد الغرف', style: TextStyles.medium16.copyWith(color: Colors.grey)),
            ),
             SizedBox(height: 12,),
             TypesGeneral(categories: ['4 غرف', '5 غرف+', 'الكل', 'غرفتين','3 غرف'],),
             SizedBox(height: 20,),
              PriceRange(),
              SizedBox(height: 20,),
              Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text('طريقة الدفع', style: TextStyles.medium16.copyWith(color: Colors.grey)),
            ),
             SizedBox(height: 12,),
             TypesGeneral(categories: ['أى', 'تقسيط', 'كاش'],),
             SizedBox(height: 20,),
              Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text('حالة العقار', style: TextStyles.medium16.copyWith(color: Colors.grey)),
            ),
             SizedBox(height: 12,),
             TypesGeneral(categories: ['أى', 'جاهز', 'قيد الأنشاء'],),
             SizedBox(height: 78,),
             CustomButtom(onPressed: () {
               
             }, text: 'شاهد 10,000+ نتائج'),
              SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}