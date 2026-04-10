import 'package:flutter/material.dart';

class ProgressItem extends StatelessWidget {
  final String title;
  final double value;

  const ProgressItem(this.title, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        LinearProgressIndicator(value: value),
        const SizedBox(height: 10),
      ],
    );
  }
}