import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class selectTimeCart extends StatelessWidget {
  final String title;
  final String time;
  VoidCallback? onTap;
  selectTimeCart(
      {super.key, required this.title, required this.time, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(0, 2),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$title :",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const Gap(30),
              Row(
                children: [
                  Text(
                    time,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    size: 24,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
