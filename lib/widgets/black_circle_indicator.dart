import 'package:flutter/material.dart';

class BlackCircleIndicator extends StatelessWidget {
  final int total;
  final int current;

  const BlackCircleIndicator(
      {super.key, required this.total, required this.current});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        total,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: current == index ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
