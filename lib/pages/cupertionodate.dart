import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cup extends StatefulWidget {
  const Cup({super.key});

  @override
  State<Cup> createState() => _CupState();
}

class _CupState extends State<Cup> {
  DateTime dateTime = DateTime(2021, 1, 17, 10, 20);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text(
            "Date Picker Cupertino",
          ),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => SizedBox(
                height: 250,
                child: CupertinoDatePicker(
                  backgroundColor: Colors.white,
                  initialDateTime: dateTime,
                  use24hFormat: true,
                  mode: CupertinoDatePickerMode.date,
                  onDateTimeChanged: (DateTime newTime) {
                    setState(() {
                      dateTime = newTime;
                    });
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
