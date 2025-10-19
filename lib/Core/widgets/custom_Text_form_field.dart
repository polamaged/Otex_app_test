
import 'package:flutter/material.dart';
import 'package:otex_app_task/Core/utils/app_text_style.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.HintText, required this.textInputType, this.suffixIcon, this.onSaved, this.obscureText= false, required String label});
  final String HintText ;
  final TextInputType textInputType;
  final Widget ?suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onSaved: onSaved,
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        filled: true,
        fillColor:const Color(0xffffffff),
        hintText: HintText,
        hintStyle: TextStyles.bold13.copyWith(
          color:  Color(0xff84878F),
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide:const BorderSide(
          width: 1,
          color: Color(0xFFE6E9E9)),
      );
  }
}