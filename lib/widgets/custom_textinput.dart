import 'package:flutter/material.dart';
import 'package:food_delivery_app/util/colors.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    Key key, 
    @required String hintText,
    EdgeInsets padding = const EdgeInsets.only(left: 40),
  }) : 
  _hintText = hintText,
  _padding = padding,
  super(key: key);

  final String _hintText;
  final EdgeInsets _padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: const ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: StadiumBorder(),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: _hintText,
          hintStyle: const TextStyle(
            color: AppColor.placeholder,
          ),
          contentPadding: _padding,
        ),
      ),
    );
  }
}