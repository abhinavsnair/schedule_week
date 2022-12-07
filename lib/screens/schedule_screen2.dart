import 'package:flutter/material.dart';
import 'package:schedule_week/constants/constants.dart';
import 'utils/time_container.dart';

class ScheduleScreen2 extends StatefulWidget {
  const ScheduleScreen2({super.key});

  @override
  State<ScheduleScreen2> createState() => _ScheduleScreen2State();
}

// for sunday
bool isSunday = false;
bool isSundayMornging = false;
bool isSundayAfternoon = false;
bool isSundayEvening = false;

// for monday
bool isMonday = false;
bool isMondayMornging = false;
bool isMondayAfternoon = false;
bool isMondayEvening = false;

// for tuesday
bool isTuesday = false;
bool isTuesdayMornging = false;
bool isTuesdayAfternoon = false;
bool isTuesdayEvening = false;

// for wednesday
bool isWednesday = false;
bool isWednesdayMornging = false;
bool isWednesdayAfternoon = false;
bool isWednesdayEvening = false;

// for thursday
bool isThursday = false;
bool isThursdayMornging = false;
bool isThursdayAfternoon = false;
bool isThursdayEvening = false;

// for friday
bool isFriday = false;
bool isFridayMornging = false;
bool isFridayAfternoon = false;
bool isFridayEvening = false;

// for saturday
bool isSaturday = false;
bool isSaturdayMornging = false;
bool isSaturdayAfternoon = false;
bool isSaturdayEvening = false;

class _ScheduleScreen2State extends State<ScheduleScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              const Text(
                'Set your weekly hours',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              sboxh15,

              // sunday
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 21,
                        width: 21,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isSundayMornging == true ||
                                  isSundayAfternoon == true ||
                                  isSundayEvening == true
                              ? Colors.green
                              : Colors.grey,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      sboxw15,
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isSunday = !isSunday;
                          });
                        }),
                        child: const Text('Sun'),
                      )
                    ],
                  ),
                  isSunday == true
                      ? Row(
                          children: [
                            TimeContainer(
                              text: "Morning",
                              color: isSundayMornging == true
                                  ? purple
                                  : Colors.grey,
                              textcolor: isSundayMornging == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isSundayMornging = !isSundayMornging;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isSundayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              text: "Afternoon",
                              color: isSundayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isSundayAfternoon = !isSundayAfternoon;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isSundayEvening == true
                                  ? purple
                                  : Colors.grey,
                              text: "Evening",
                              color: isSundayEvening == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isSundayEvening = !isSundayEvening;
                                });
                              },
                            ),
                          ],
                        )
                      : const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'unavailable',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
              sboxh10,
              const Divider(
                thickness: 0.8,
              ),

              // monday
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 21,
                        width: 21,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isMondayMornging == true ||
                                  isMondayAfternoon == true ||
                                  isMondayEvening == true
                              ? Colors.green
                              : Colors.grey,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      sboxw15,
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isMonday = !isMonday;
                          });
                        }),
                        child: const Text('Mon'),
                      )
                    ],
                  ),
                  isMonday == true
                      ? Row(
                          children: [
                            TimeContainer(
                              textcolor: isMondayMornging == true
                                  ? purple
                                  : Colors.grey,
                              text: "Morning",
                              color: isMondayMornging == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isMondayMornging = !isMondayMornging;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isMondayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              text: "Afternoon",
                              color: isMondayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isMondayAfternoon = !isMondayAfternoon;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isMondayEvening == true
                                  ? purple
                                  : Colors.grey,
                              text: "Evening",
                              color: isMondayEvening == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isMondayEvening = !isMondayEvening;
                                });
                              },
                            ),
                          ],
                        )
                      : const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'unavailable',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
              sboxh10,
              const Divider(
                thickness: 0.8,
              ),
              // tuesday
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 21,
                        width: 21,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isTuesdayMornging == true ||
                                  isTuesdayAfternoon == true ||
                                  isTuesdayEvening == true
                              ? Colors.green
                              : Colors.grey,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      sboxw15,
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isTuesday = !isTuesday;
                          });
                        }),
                        child: const Text('Tues'),
                      )
                    ],
                  ),
                  isTuesday == true
                      ? Row(
                          children: [
                            TimeContainer(
                              textcolor: isTuesdayMornging == true
                                  ? purple
                                  : Colors.grey,
                              text: "Morning",
                              color: isTuesdayMornging == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isTuesdayMornging = !isTuesdayMornging;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isTuesdayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              text: "Afternoon",
                              color: isTuesdayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isTuesdayAfternoon = !isTuesdayAfternoon;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isTuesdayEvening == true
                                  ? purple
                                  : Colors.grey,
                              text: "Evening",
                              color: isTuesdayEvening == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isTuesdayEvening = !isTuesdayEvening;
                                });
                              },
                            ),
                          ],
                        )
                      : const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "unavailable",
                            style: TextStyle(color: Colors.grey),
                          )),
                ],
              ),
              sboxh10,
              const Divider(
                thickness: 0.8,
              ),

              // wednesday
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 21,
                        width: 21,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isWednesdayMornging == true ||
                                  isWednesdayAfternoon == true ||
                                  isWednesdayEvening == true
                              ? Colors.green
                              : Colors.grey,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      sboxw15,
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isWednesday = !isWednesday;
                          });
                        }),
                        child: const Text('Wed'),
                      )
                    ],
                  ),
                  isWednesday == true
                      ? Row(
                          children: [
                            TimeContainer(
                              textcolor: isWednesdayMornging == true
                                  ? purple
                                  : Colors.grey,
                              text: "Morning",
                              color: isWednesdayMornging == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isWednesdayMornging = !isWednesdayMornging;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isWednesdayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              text: "Afternoon",
                              color: isWednesdayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isWednesdayAfternoon = !isWednesdayAfternoon;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isWednesdayEvening == true
                                  ? purple
                                  : Colors.grey,
                              text: "Evening",
                              color: isWednesdayEvening == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isWednesdayEvening = !isWednesdayEvening;
                                });
                              },
                            ),
                          ],
                        )
                      : const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'unavailable',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
              sboxh10,
              const Divider(
                thickness: 0.8,
              ),
              // thursday
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 21,
                        width: 21,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isThursdayMornging == true ||
                                  isThursdayAfternoon == true ||
                                  isThursdayEvening == true
                              ? Colors.green
                              : Colors.grey,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      sboxw15,
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isThursday = !isThursday;
                          });
                        }),
                        child: const Text('Thu'),
                      )
                    ],
                  ),
                  isThursday == true
                      ? Row(
                          children: [
                            TimeContainer(
                              textcolor: isThursdayMornging == true
                                  ? purple
                                  : Colors.grey,
                              text: "Morning",
                              color: isThursdayMornging == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isThursdayMornging = !isThursdayMornging;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isThursdayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              text: "Afternoon",
                              color: isThursdayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isThursdayAfternoon = !isThursdayAfternoon;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isThursdayEvening == true
                                  ? purple
                                  : Colors.grey,
                              text: "Evening",
                              color: isThursdayEvening == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isThursdayEvening = !isThursdayEvening;
                                });
                              },
                            ),
                          ],
                        )
                      : const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'unavailable',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
              sboxh10,
              const Divider(
                thickness: 0.8,
              ),
              // friday
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 21,
                        width: 21,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isFridayMornging == true ||
                                  isFridayAfternoon == true ||
                                  isFridayEvening == true
                              ? Colors.green
                              : Colors.grey,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      sboxw15,
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isFriday = !isFriday;
                          });
                        }),
                        child: const Text('Fri'),
                      )
                    ],
                  ),
                  isFriday == true
                      ? Row(
                          children: [
                            TimeContainer(
                              textcolor: isFridayMornging == true
                                  ? purple
                                  : Colors.grey,
                              text: "Morning",
                              color: isFridayMornging == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isFridayMornging = !isFridayMornging;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isFridayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              text: "Afternoon",
                              color: isFridayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isFridayAfternoon = !isFridayAfternoon;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isFridayEvening == true
                                  ? purple
                                  : Colors.grey,
                              text: "Evening",
                              color: isFridayEvening == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isFridayEvening = !isFridayEvening;
                                });
                              },
                            ),
                          ],
                        )
                      : const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'unavailable',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
              sboxh10,
              const Divider(
                thickness: 0.8,
              ),
              // saturday
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 21,
                        width: 21,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isSaturdayMornging == true ||
                                  isSaturdayAfternoon == true ||
                                  isSaturdayEvening == true
                              ? Colors.green
                              : Colors.grey,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      sboxw15,
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isSaturday = !isSaturday;
                          });
                        }),
                        child: const Text('Sat'),
                      )
                    ],
                  ),
                  isSaturday == true
                      ? Row(
                          children: [
                            TimeContainer(
                              textcolor: isSaturdayMornging == true
                                  ? purple
                                  : Colors.grey,
                              text: "Morning",
                              color: isSaturdayMornging == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isSaturdayMornging = !isSaturdayMornging;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isSaturdayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              text: "Afternoon",
                              color: isSaturdayAfternoon == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isSaturdayAfternoon = !isSaturdayAfternoon;
                                });
                              },
                            ),
                            TimeContainer(
                              textcolor: isSaturdayEvening == true
                                  ? purple
                                  : Colors.grey,
                              text: "Evening",
                              color: isSaturdayEvening == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isSaturdayEvening = !isSaturdayEvening;
                                });
                              },
                            ),
                          ],
                        )
                      : const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'unavailable',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
              sboxh10,
              // save button
              Padding(
                padding: const EdgeInsets.only(left: 125, top: 15),
                child: SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      // saveSchedule();
                    },
                    child: const Text('Save'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // void saveSchedule() async{
  //   final scheduleData = WeeklySchedules(schedule: TimeContainer.time);  }
}
