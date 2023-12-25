import 'package:flutter/material.dart';

class MtTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const GTextField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
