import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_images.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/sub_catagory_item.dart';

class SubCatagory extends StatefulWidget {
  const SubCatagory({super.key});

  @override
  State<SubCatagory> createState() => _SubCatagoryState();
}

class _SubCatagoryState extends State<SubCatagory> {
  final List<Map<String, String>> subCategories = const [
    {'image': Assets.imagesMen, 'text': 'موضة رجالى'},
    {'image': Assets.imagesWatch, 'text': 'ساعات'},
    {'image': Assets.imagesMakeup, 'text': 'منتجات تجميل'},
    {'image': Assets.imagesVilla, 'text': 'فلل'},
    {'image': Assets.imagesMobile, 'text': 'موبايلات'},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.of(context).size.height * 0.10,
        width: double.infinity,
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: subCategories.length,
        itemBuilder: (context, index) {
          return SubCatagoryItem(
            imagePath: subCategories[index]['image']!,
            text: subCategories[index]['text']!,
          );
        },
      ),
    );
  }
}
