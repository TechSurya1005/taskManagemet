import 'package:flutter/material.dart';
import 'package:task_management/constant/color.dart';

class HomeTaskGroupCard extends StatelessWidget {
  final String title;
  final String subtitle;
  VoidCallback? onTap;
  HomeTaskGroupCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    offset: const Offset(0, 2),
                    blurRadius: 4)
              ]),
          child: ListTile(
            leading: const CircleAvatar(
              child: Icon(
                Icons.settings_backup_restore,
                size: 22,
              ),
            ),
            title: Text(
              title,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            subtitle: Text(
              subtitle,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: textColor3, fontSize: 14.0),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              color: accentColor,
            ),
          )),
    );
  }
}
