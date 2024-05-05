import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:task_management/constant/color.dart';
import 'package:task_management/screens/addTask/view/addTask.dart';
import 'package:task_management/screens/home/homeView.dart';
import 'package:task_management/screens/task/view/taskView.dart';

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

  final List<Widget> pages = [
    const HomeView(),
    const TaskView(),
    const AddTask()
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
          body: pages[mainHomeProvider.currentIndex],
          extendBody: true,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: accentColor,
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
                      icon: SvgPicture.asset(
                        mainHomeProvider.currentIndex == 0
                            ? "assets/svg/home_fill.svg"
                            : "assets/svg/home_outline.svg",
                        color: mainHomeProvider.currentIndex == 0
                            ? Colors.white
                            : hintColor,
                        height: mainHomeProvider.currentIndex == 0 ? 22 : 24,
                        width: mainHomeProvider.currentIndex == 0 ? 22 : 24,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        mainHomeProvider.changeIndexAccordingScreen(1);
                      },
                      icon: Icon(
                        mainHomeProvider.currentIndex == 1
                            ? Icons.calendar_month
                            : Icons.calendar_month_outlined,
                        color: mainHomeProvider.currentIndex == 1
                            ? Colors.white
                            : hintColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        mainHomeProvider.changeIndexAccordingScreen(2);
                      },
                      icon: Icon(
                        mainHomeProvider.currentIndex == 2
                            ? Icons.note_alt_rounded
                            : Icons.note_alt_outlined,
                        color: mainHomeProvider.currentIndex == 2
                            ? Colors.white
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
