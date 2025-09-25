import 'package:flutter/material.dart';
import 'package:ui_design/utils/dimensions.dart';
import 'package:ui_design/utils/styles.dart';

class SocialContainer extends StatelessWidget {
  final Image image;
  final String text;
  const SocialContainer({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: Dimensions.borderRadius,
          color: Colors.white.withValues(alpha: 0.4),
        ),
        child: Row(
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: image,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(text, style: Styles.bodyLarge),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
