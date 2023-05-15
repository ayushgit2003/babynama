import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MonthDuration1 extends StatefulWidget {
  const MonthDuration1({Key? key}) : super(key: key);

  @override
  State<MonthDuration1> createState() => _MonthDuration1State();
}

class _MonthDuration1State extends State<MonthDuration1> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              click = !click;
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 90,
            decoration: BoxDecoration(
              color: (click == true) ? Color(0xff2563eb) : Colors.white,
              borderRadius: BorderRadius.circular(10),
              // border: Border.all(color: Colors.lightBlue, width :1,)
            ),
            child: Text(
              "1 Month",
              style: GoogleFonts.poppins(
                color: (click == true) ? Colors.white : Colors.lightBlue,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              click = !click;
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 90,
            decoration: BoxDecoration(
                color: (click == true) ? Colors.white: Color(0xff2563eb),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                )),
            child: Text(
              "3 Months",
              style: GoogleFonts.poppins(
                color: (click == true) ? Colors.lightBlue : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
