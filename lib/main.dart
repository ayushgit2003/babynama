import 'package:babynama/utils/CarePlanDetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: SizedBox(
            height: 80,
            width: 135,
            child: Image.asset(
              'assets/logo-new.jpeg',
            )),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Container(
                margin: EdgeInsets.only(right: 8, bottom: 4),
                height: 47,
                width: 47,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.white54,
                      width: 3,
                    )),
                child: IconButton(
                  icon: const Icon(
                    Icons.density_medium,
                    color: Colors.white54,
                    size: 25,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [Column(
          children: [
            Text(
              "Our Care Plans",
              style: GoogleFonts.poppins(
                  color: Colors.lightBlue[200],
                  fontSize: 33,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    color: const Color(0xff2563eb),
                    borderRadius: BorderRadius.circular(10),
                    // border: Border.all(color: Colors.lightBlue, width :1,)
                  ),
                  child: Text(
                    "1 Month",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      )),
                  child: Text(
                    "3 Months",
                    style: GoogleFonts.poppins(color: Colors.lightBlue),
                  ),
                ),
              ],
            )
          ],
        ),
          const SizedBox(
            height: 20,
          ),
          const Column(
            children: [
               CarePlanDetails(),
            ],
          )
      ]
      ),

    );
  }
}
