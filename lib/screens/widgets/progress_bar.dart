import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key, this.index = 0}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: index == 0 ? Colors.blue : Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: 5.0),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: index == 1 ? Colors.blue : Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
         SizedBox(width: 5.0),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: index == 2 ? Colors.blue : Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Spacer()
      ],
    );
  }
}
