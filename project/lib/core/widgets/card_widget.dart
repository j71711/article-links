import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String? Function(String?)? validator;
  const CardWidget({
    super.key,
    required this.title,
    required this.controller,
    this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(title),
        TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ],
    );
  }
}
