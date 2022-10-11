import 'package:flutter/material.dart';
import 'package:flutter_application_hotel/view/hotel_home.dart';
import 'package:flutter_application_hotel/view/hotel_info.dart';

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
      home: HotelHome(),
    );
  }
}
