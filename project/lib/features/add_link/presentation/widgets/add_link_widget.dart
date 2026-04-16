import 'package:flutter/material.dart';

class AddLinkWidget extends StatelessWidget {
  const AddLinkWidget({
    super.key,
    this.controller,
    required this.title,
  });
  final String title;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 400),
        child: Center(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(title),
              TextFormField(
                controller: controller,

                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
