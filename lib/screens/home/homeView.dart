import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:task_management/constant/color.dart';
import 'package:task_management/utils/HomeTaskGroupCard.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 20.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Jimmy",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    "You have 4 task due today",
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: textColor3),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: borderColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.notifications_active,
                    color: textColor3,
                  ),
                ),
              )
            ],
          ),
          const Gap(20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 45,
                width: size.width * 0.74,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: borderColor),
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        color: hintColor,
                      ),
                      const Gap(10),
                      Text(
                        "Search......",
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(color: hintColor),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 45,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: accentColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SvgPicture.asset(
                    "assets/svg/filter.svg",
                    height: 24,
                    width: 24,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          const Gap(20.0),
          Text(
            "All Task",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const Gap(10.0),
          ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: HomeTaskGroupCard(
                  title: "Ongoing",
                  subtitle: '10 tasks',
                ),
              );
            },
          ),
          const Gap(40.0),
        ],
      ),
    );
  }
}
