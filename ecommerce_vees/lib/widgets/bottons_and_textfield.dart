import 'package:flutter/material.dart';
import '../constants/global_variables.dart';

class BottonWidget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String bt_txt;
  // ignore: prefer_typing_uninitialized_variables
  final onTap;
  const BottonWidget({
    super.key,
    // ignore: non_constant_identifier_names
    required this.bt_txt,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 47,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Center(
            child: Text(
          bt_txt,
          style: const TextStyle(
              color: GlobalVariables.greyBackgroundCOlor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}

class TextINputField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final TextEditingController controller;
  const TextINputField({
    Key? key,
    required this.hint,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: GlobalVariables.backgroundColor,
        border: Border.all(
            color: Colors.black,
            width: 0.5,
            style: BorderStyle.solid,
            strokeAlign: StrokeAlign.inside),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
            suffixIcon: Icon(icon),
          ),
        ),
      ),
    );
  }
}
