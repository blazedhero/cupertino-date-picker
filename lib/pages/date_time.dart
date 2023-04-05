import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime currentDate = DateTime.now();
  String? SelectedDate;

  datePicker(context) async {
    DateTime? userSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2024),
    );

    if (userSelected == null) {
      return;
    } else {
      setState(() {
        currentDate = userSelected;
        SelectedDate =
            "${currentDate.year}/${currentDate.month}/${currentDate.day}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DatePicker Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Selected Date : ${currentDate.year}/${currentDate.month}/${currentDate.day}",
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                datePicker(context);
              },
              child: Text(
                "Select date",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
