import 'package:flutter/material.dart';
import 'package:project/core/extensions/font_extensions.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: .none,
      children: [
        Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: .spaceBetween,
              children: [Text("jalnar"), Text("Flutter")],
            ),
            subtitle: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  "------------------",
                ),
                Align(
                  alignment: .centerRight,
                  child: Text(
                    "Create at",
                    style: TextStyle(fontSize: 10.font(min: 10, max: 12)),
                  ),
                ),
              ],
            ),
          ),
        ),
       
        
      ],
    );
  }
}
