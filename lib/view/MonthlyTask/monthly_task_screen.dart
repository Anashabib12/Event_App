import 'package:event_app/extensions/datetime.dart';
import 'package:event_app/widgets/custom_ap_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class MonthlyTaskScreen extends StatefulWidget {
  const MonthlyTaskScreen({super.key});

  @override
  _MonthlyTaskScreenState createState() => _MonthlyTaskScreenState();
}

class _MonthlyTaskScreenState extends State<MonthlyTaskScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  void onTap() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor, // Dark background
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomApButton(
                      onTap: onTap,
                      icon: Icons.arrow_back_ios_new_rounded,
                    ),
                    Text(
                      "Monthly Tasks",
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CustomApButton(onTap: onTap, icon: Iconsax.edit_2),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${DateTime.now().dateTime}✍",
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: theme.iconTheme.color,
                      child: const Center(
                        child: Icon(Iconsax.calendar_1, color: Colors.white),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 4),
                const Row(
                  children: [
                    Text(
                      "15 tasks today",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Task Date Row
                SizedBox(
                  height: 118,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      DateTime date = DateTime.now().add(Duration(days: index));
                      String formattedDate =
                          DateFormat('dd').format(date); // Get day
                      String dayOfWeek = DateFormat('EEE').format(date);
                      bool isToday = date.isSameDate(DateTime.now());
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 118,
                          width: 64,
                          // padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.only(right: 4),
                          decoration: BoxDecoration(
                              color: isToday
                                  ? theme.iconTheme.color
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: isToday
                                      ? Colors.transparent
                                      : Colors.grey.withOpacity(0.5))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                formattedDate,
                                style: TextStyle(
                                    color: isToday
                                        ? Colors.white
                                        : Colors.grey.withOpacity(0.8),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25),
                              ),
                              Text(
                                dayOfWeek,
                                style: TextStyle(
                                    color: isToday
                                        ? Colors.white
                                        : Colors.grey.withOpacity(0.8),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                // Calendar
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors
                        .transparent, // Background color of the calendar container
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: _focusedDay,
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                    },
                    calendarStyle: CalendarStyle(
                      todayDecoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: theme.iconTheme.color!,
                        ),
                      ),
                      selectedDecoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: theme.iconTheme.color!,
                        ),
                      ),
                      outsideDaysVisible: false,
                      defaultTextStyle: TextStyle(color: theme.primaryColor),
                      weekendTextStyle: TextStyle(color: theme.primaryColor),
                      selectedTextStyle:
                          TextStyle(color: theme.iconTheme.color),
                      todayTextStyle: TextStyle(color: theme.iconTheme.color),
                    ),
                    headerStyle: HeaderStyle(
                      titleTextFormatter: (date, dynamic locale) =>
                          DateFormat('dd MMM yyyy')
                              .format(date), // Custom title format
                      formatButtonVisible: false,
                      titleCentered: true,
                      titleTextStyle: TextStyle(
                        color: theme.iconTheme.color,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      leftChevronIcon:
                          Icon(Icons.arrow_back_ios, color: theme.primaryColor),
                      rightChevronIcon: Icon(Icons.arrow_forward_ios,
                          color: theme.primaryColor),
                    ),
                    calendarFormat: CalendarFormat.month,
                    daysOfWeekStyle: const DaysOfWeekStyle(
                      weekdayStyle: TextStyle(color: Colors.grey),
                      weekendStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
