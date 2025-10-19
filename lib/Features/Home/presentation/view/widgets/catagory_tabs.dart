import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/catagory_item.dart';
import 'package:otex_app_task/Features/cubit/product/product_cubit.dart';

class CatagoryTabs extends StatefulWidget {
  const CatagoryTabs({super.key});

  @override
  State<CatagoryTabs> createState() => _CatagoryTabsState();
}

class _CatagoryTabsState extends State<CatagoryTabs> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> categories = [
    {'id': 0, 'name': 'كل العروض'},
    {'id': 1, 'name': 'ملابس'},
    {'id': 4, 'name': 'أكسسوارات'},
    {'id': 2, 'name': 'أحذية'},
    {'id': 3, 'name': 'إلكترونيات'},
    {'id': 5, 'name': 'أدوات منزلية'},
    {'id': 6, 'name': 'ألعاب'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CatagoryItem(
            text: categories[index]['name'],
            isSelected: index == selectedIndex,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });

              final categoryId = categories[index]['id'];
              final productCubit = context.read<ProductCubit>();

              if (categoryId == 0) {
                productCubit.fetchAllProducts();
              } else {
                productCubit.fetchProductsByCategory(categoryId);
              }
            },
          );
        },
      ),
    );
  }
}
