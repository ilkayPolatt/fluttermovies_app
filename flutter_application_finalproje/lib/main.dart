import 'package:flutter/material.dart';
import 'package:flutter_application_finalproje/view/doctor_info_first_page.dart';
import 'package:flutter_application_finalproje/view/doctor_info_second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: DoctorInfoSecondPage(),
    );
  }
}
