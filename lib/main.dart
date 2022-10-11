import 'package:flutter/material.dart';
import 'package:flutter_application_5/view/movie_Info.dart';
import 'package:flutter_application_5/view/movie_detail.dart';

import 'package:flutter_application_5/view/movie_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MovieInfo(),
    );
  }
}
