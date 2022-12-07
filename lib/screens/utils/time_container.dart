import 'package:flutter/material.dart';

class TimeContainer extends StatelessWidget {
  final String text;
  final Color color;
  final void Function()? onTap;

  const TimeContainer(
      {Key? key, required this.text, required this.color, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: color,
              )),
          height: 30,
          width: 70,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
