import 'package:flutter/material.dart';
import 'package:otex_app_task/Features/Home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:otex_app_task/Features/Home/presentation/view/widgets/navigation_bar_item.dart';
class CustomButtomNavigationBar extends StatefulWidget {
  const CustomButtomNavigationBar({super.key, required this.onItemSelected});


  final ValueChanged<int> onItemSelected;
  @override
  State<CustomButtomNavigationBar> createState() =>
      _CustomButtomNavigationBarState();


}

class _CustomButtomNavigationBarState extends State<CustomButtomNavigationBar> {
  
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: bottomNavigationBarItems.asMap().entries.map((e) {
          var index = e.key;
          var entity = e.value;

          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  widget.onItemSelected(index);
                });
              },
              child: NavigationBarITem(
                iselected: currentIndex == index,
                bottomNavigationBarEntity: entity,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
