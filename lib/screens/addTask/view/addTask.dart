import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:task_management/utils/CustomButton.dart';
import 'package:task_management/utils/selectTimeCard.dart';

import '../../../constant/color.dart';
import '../../../utils/CategoryCard.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String formattedDate = DateFormat.MMMMd().format(DateTime.now());

  DateTime? _selectedValue;

  TimeOfDay? selectedStartTime = TimeOfDay.now();
  var formattedStartTime;

  TimeOfDay? selectedEndTime = TimeOfDay.now();
  var formattedEndTime;

  @override
  void initState() {
    formattedStartTime = DateFormat('hh:mm a').format(DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        selectedStartTime!.hour,
        selectedStartTime!.minute));

    formattedEndTime = DateFormat('hh:mm a').format(DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        selectedStartTime!.hour,
        selectedStartTime!.minute));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Colors.grey.withOpacity(0.4),
                offset: const Offset(0, 4),
              )
            ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Create Task",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: borderColor)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.calendar_month_outlined,
                            color: textColor3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(10.0),
                DatePicker(
                  dateTextStyle: GoogleFonts.lato(
                    color: textColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                  ),
                  dayTextStyle: GoogleFonts.lato(
                    color: textColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                  ),
                  monthTextStyle: GoogleFonts.lato(
                    color: textColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                  ),
                  DateTime.now(),
                  initialSelectedDate: DateTime.now(),
                  selectionColor: accentColor,
                  selectedTextColor: Colors.white,
                  onDateChange: (date) {
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(10),
                PageTitle(context, "Title"),
                const Gap(10),
                Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: Theme.of(context).textTheme.labelSmall,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter your task title",
                        hintStyle: Theme.of(context)
                            .textTheme
                            .labelSmall!
                            .copyWith(color: hintColor),
                      ),
                    ),
                  ),
                ),
                const Gap(10),
                PageTitle(context, "Category"),
                const Gap(10),
                SizedBox(
                  height: 25,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: CategoryCard(
                          catTitle: "Projects",
                        ),
                      );
                    },
                  ),
                ),
                const Gap(10),
                PageTitle(context, "Time"),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    selectTimeCart(
                      onTap: () async {
                        selectedStartTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: ThemeData(
                                primaryColor:
                                    textColor2, // Color of the header background
                                backgroundColor:
                                    textColor2, // Color of the selected time
                                dialogBackgroundColor: Colors
                                    .white, // Color of the dialog background
                                // Customize more colors as needed
                              ),
                              child: child!,
                            );
                          },
                        );
                        if (selectedStartTime != null) {
                          formattedStartTime = DateFormat('hh:mm a').format(
                              DateTime(
                                  DateTime.now().year,
                                  DateTime.now().month,
                                  DateTime.now().day,
                                  selectedStartTime!.hour,
                                  selectedStartTime!.minute));
                          print('Selected time: $formattedStartTime');
                          setState(() {});
                        } else {
                          // User canceled the picker
                          print('No time selected');
                        }
                      },
                      title: "Start",
                      time: formattedStartTime.toString(),
                    ),
                    selectTimeCart(
                      onTap: () async {
                        selectedEndTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: ThemeData(
                                primaryColor:
                                    textColor2, // Color of the header background
                                backgroundColor:
                                    textColor2, // Color of the selected time
                                dialogBackgroundColor: Colors
                                    .white, // Color of the dialog background
                                // Customize more colors as needed
                              ),
                              child: child!,
                            );
                          },
                        );
                        if (selectedEndTime != null) {
                          formattedEndTime = DateFormat('hh:mm a').format(
                              DateTime(
                                  DateTime.now().year,
                                  DateTime.now().month,
                                  DateTime.now().day,
                                  selectedEndTime!.hour,
                                  selectedEndTime!.minute));
                          print('Selected time: $formattedEndTime');
                          setState(() {});
                        } else {
                          // User canceled the picker
                          print('No time selected');
                        }
                      },
                      title: "End",
                      time: formattedEndTime.toString(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: CustomButton(title: "Create Task"),
          )
        ],
      ),
    );
  }

  Text PageTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}
