import 'package:flutter/material.dart';

class CoustomContainer extends StatelessWidget {
  final Image image;
  const CoustomContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Colors.white,
      ),
      child: Padding(padding: const EdgeInsets.all(10.0), child: image),
    );
  }
}
