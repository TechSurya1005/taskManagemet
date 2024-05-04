import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:task_management/constant/color.dart';

import '../../../controller/mainHomeViewModal.dart';

class MainHomeView extends StatefulWidget {
  const MainHomeView({super.key});

  @override
  State<MainHomeView> createState() => _MainHomeViewState();
}

class _MainHomeViewState extends State<MainHomeView> {
  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> Pages = [
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: () async {
      bool confirm = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            'Confirm',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          content: Text(
            'Are you sure you want to exit ?',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(
                'No',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            TextButton(
              onPressed: () => exit(0),
              child: Text(
                'Yes',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ],
        ),
      );
      return confirm;
    }, child: Consumer<MainHomeViewViewModal>(
      builder: (context, mainHomeProvider, child) {
        return Scaffold(
          body: Pages[mainHomeProvider.currentIndex],
          extendBody: true,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 2,
                      // offset: const Offset(1, 1), // changes position of shadow
                    ),
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {
                        mainHomeProvider.changeIndexAccordingScreen(0);
                      },
                      icon: Icon(
                        mainHomeProvider.currentIndex == 0
                            ? Icons.home
                            : Icons.home_outlined,
                        size: 30.0,
                        color: mainHomeProvider.currentIndex == 0
                            ? secondaryColor
                            : hintColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        mainHomeProvider.changeIndexAccordingScreen(1);
                      },
                      icon: SvgPicture.asset(
                        mainHomeProvider.currentIndex == 1
                            ? "assets/svg/newFill.svg"
                            : "assets/svg/newOutlined.svg",
                        height: 30.0,
                        width: 30.0,
                        color: mainHomeProvider.currentIndex == 1
                            ? secondaryColor
                            : hintColor,
                      ),
                    ),
                    const Gap(5),
                    IconButton(
                      onPressed: () {
                        mainHomeProvider.changeIndexAccordingScreen(2);
                      },
                      icon: Icon(
                        mainHomeProvider.currentIndex == 2
                            ? Icons.notifications_active
                            : Icons.notifications_on_outlined,
                        size: 30.0,
                        color: mainHomeProvider.currentIndex == 2
                            ? secondaryColor
                            : hintColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        mainHomeProvider.changeIndexAccordingScreen(3);
                      },
                      icon: Icon(
                        mainHomeProvider.currentIndex == 3
                            ? Icons.person
                            : Icons.person_outline,
                        size: 30.0,
                        color: mainHomeProvider.currentIndex == 3
                            ? secondaryColor
                            : hintColor,
                      ),
                    ),
                  ]),
            ),
          ),
        );
      },
    ));
  }
}
