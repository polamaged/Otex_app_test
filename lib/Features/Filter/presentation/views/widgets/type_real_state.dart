import 'package:flutter/material.dart';
import 'package:otex_app_task/Features/Filter/presentation/views/widgets/catagory_item.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/catagory_item.dart';

class TypesGeneral extends StatefulWidget {
  const TypesGeneral({super.key, required this.categories});
  final List<String> categories;
  @override
  State<TypesGeneral> createState() => _TypesGeneralState();
}

int selectedIndex = 0;
bool isSelected = false;
//final List<String> categories = ['الكل', 'توين هاوس', 'فيلا منفصلة', 'تاون هاوس'];

class _TypesGeneralState extends State<TypesGeneral> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context, index) {
          return TypesItem(
            text: widget.categories[index],
            isSelected: index == selectedIndex,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}
