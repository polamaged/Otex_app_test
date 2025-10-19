import 'package:flutter/material.dart';

class TypesItem extends StatelessWidget {
  const TypesItem({super.key, required this.text, required this.isSelected, required this.onTap});
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          padding: EdgeInsets.all(12),
          duration: Duration(milliseconds: 200),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isSelected ? Color(0xff0079FE) :Color(0xffE6E6E6),
                width: 1,
              ), 
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(text , style: TextStyle(
            color: isSelected ? Color(0xff0079FE) : Color(0xff84878F),
          ),),
        
        ),
      ),
    );
  }
}
