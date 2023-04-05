import 'package:flutter/material.dart';
import 'package:passingscreen/pages/cupertionodate.dart';
import 'package:passingscreen/pages/date_time.dart';
import 'package:passingscreen/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Cup(),
    );
  }
}

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CHOOSE SCREEN")),
      body: Text("Hey THEREEEEE"),
    );
  }
}
