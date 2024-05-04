import 'package:flutter/material.dart';

import '../constant/color.dart';

class NormalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const NormalAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: secondaryColor,
      elevation: 1,
      centerTitle: true,
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .labelLarge!
            .copyWith(color: buttonTextColor),
      ),
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );
  }

  // Implement the preferredSize getter
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
