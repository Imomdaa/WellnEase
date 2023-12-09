import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String txt;
  final TextEditingController myController;

  CustomTextFormFiled(
    this.txt,
    this.myController,
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
          hintText: "$txt",
          filled: true,
          fillColor: Colors.white,
          hintStyle: TextStyle(fontSize: 16),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.blue))),
    );
  }
}
