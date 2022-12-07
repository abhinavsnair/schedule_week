// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:schedule_week/constants/constants.dart';
import 'utils/time_container.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
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

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Set your weekly hours',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
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
                        child: Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isSunday = !isSunday;
                          });
                        }),
                        child: Text('sun'),
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
                              onTap: () {
                                setState(() {
                                  isSundayMornging = !isSundayMornging;
                                });
                              },
                            ),
                            TimeContainer(
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
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'unavailable',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0.8,
              ),
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
                        child: Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isMonday = !isMonday;
                          });
                        }),
                        child: Text('Mon'),
                      )
                    ],
                  ),
                  isMonday == true
                      ? Row(
                          children: [
                            TimeContainer(
                              text: "Morning",
                              color: isMondayMornging == true
                                  ? purple
                                  : Colors.grey,
                              onTap: () {
                                setState(() {
                                  isMondayMornging = !isSundayMornging;
                                });
                              },
                            ),
                            TimeContainer(
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
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'unavailable',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0.8,
              ),
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
                        child: Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isTuesday = !isTuesday;
                          });
                        }),
                        child: Text('Tues'),
                      )
                    ],
                  ),
                  isTuesday == true
                      ? Row(
                          children: [
                            TimeContainer(
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
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "unavailable",
                            style: TextStyle(color: Colors.grey),
                          )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0.8,
              ),
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
                        child: Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isWednesday = !isWednesday;
                          });
                        }),
                        child: Text('Wed'),
                      )
                    ],
                  ),
                  isWednesday == true
                      ? Row(
                          children: [
                            TimeContainer(
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
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'unavailable',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0.8,
              ),
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
                        child: Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isThursday = !isThursday;
                          });
                        }),
                        child: Text('Thu'),
                      )
                    ],
                  ),
                  isThursday == true
                      ? Row(
                          children: [
                            TimeContainer(
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
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'unavailable',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0.8,
              ),
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
                        child: Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isFriday = !isFriday;
                          });
                        }),
                        child: Text('Fri'),
                      )
                    ],
                  ),
                  isFriday == true
                      ? Row(
                          children: [
                            TimeContainer(
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
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'unavailable',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 0.8,
              ),
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
                        child: Center(
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (() {
                          setState(() {
                            isSaturday = !isSaturday;
                          });
                        }),
                        child: Text('Sat'),
                      )
                    ],
                  ),
                  isSaturday == true
                      ? Row(
                          children: [
                            TimeContainer(
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
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'unavailable',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
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
                    onPressed: () {},
                    child: Text('Save'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
