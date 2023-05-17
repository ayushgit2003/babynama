import 'package:babynama/utils/CarePlanDetails.dart';
import 'package:babynama/utils/HomePage.dart';
import 'package:babynama/utils/QuestionFaq.dart';
import 'package:babynama/utils/button1.dart';
import 'package:babynama/utils/button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=> MyHomePage(),
      },
    );
  }
}

