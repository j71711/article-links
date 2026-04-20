 import 'package:flutter/material.dart';

Widget inputWidget(TextEditingController controller, String hint, IconData icon, {bool isPassword = false}) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon, size: 20, color: const Color(0xFF4255C1)),
        hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300)),
        focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF4255C1), width: 2)),
      ),
    );
  }