import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../constant/color.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  String formattedDate = DateFormat.MMMMd().format(DateTime.now());

  DateTime? _selectedValue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            flex: 2,
            child: Container(
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
                              formattedDate,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            Text(
                              "10 tasks today",
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
            )),
        Expanded(
          flex: 6,
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 10.0, bottom: 60),
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, innerIndex) {
              final time = [
                "08:00 AM",
                "08:00 AM",
                "08:00 AM",
                "08:00 AM",
                "08:00 AM",
                "08:00 AM",
                "08:00 AM",
                "08:00 AM"
              ][innerIndex];
              final timeEnd = [
                "10:00 AM",
                "10:00 AM",
                "10:00 AM",
                "10:00 AM",
                "10:00 AM",
                "10:00 AM",
                "10:00 AM",
                "10:00 AM",
              ][innerIndex];
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          width: 70,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            textAlign: TextAlign.left,
                            time,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ),
                      ),
                      const Gap(30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            textAlign: TextAlign.left,
                            timeEnd,
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align children vertically
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4.0)),
                            // width: size.width * 0.8,
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green.shade900,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.0),
                                        bottomLeft: Radius.circular(4.0),
                                      )),
                                  height: 80,
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        "Projects",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                                color: hintColor, fontSize: 12),
                                      ),
                                      Text(
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        "Research Process",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall!
                                            .copyWith(
                                                fontWeight: FontWeight.w500),
                                      ),
                                      const Gap(10),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.watch_later_outlined,
                                            size: 18,
                                            color: textColor3,
                                          ),
                                          SizedBox(
                                              width: size.width > 370
                                                  ? size.width * 0.5
                                                  : size.width * 0.55,
                                              child: Text(
                                                "07:00 AM-09:00AM",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall!
                                                    .copyWith(
                                                        fontSize: 12.0,
                                                        color: textColor3),
                                              )),
                                          const Icon(
                                            Icons.edit,
                                            size: 20,
                                            color: Colors.black,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const Gap(10),
                    ],
                  ),
                  const Gap(10),
                ],
              );
            },
          ),
        ),
      ],
    ));
  }
}
