import 'package:flutter/material.dart';

import '../constant/color.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8,
      width: isActive ? 25 : 15,
      decoration: BoxDecoration(
          color: isActive ? textColor3 : secondaryColor.withOpacity(0.7),
          borderRadius: const BorderRadius.all(Radius.circular(6))),
      duration: const Duration(microseconds: 300),
    );
  }
}
