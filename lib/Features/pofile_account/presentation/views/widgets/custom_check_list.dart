import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';

class CustomCheckList extends StatefulWidget {
  const CustomCheckList({super.key, required this.text});

  @override
  State<CustomCheckList> createState() => _CustomCheckListState();
  final String text;
}

class _CustomCheckListState extends State<CustomCheckList> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: _isChecked ? Colors.blue : Colors.transparent,
              border: Border.all(
                color: _isChecked ? Colors.blue : Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: _isChecked
                ? Icon(Icons.check, size: 20, color: Colors.white)
                : null,
          ),
          SizedBox(width: 7,),

          Text(widget.text, style: TextStyles.bold16.copyWith(color: _isChecked ? Colors.blue : Colors.black),),
        ],
      ),
    );
  }
}
