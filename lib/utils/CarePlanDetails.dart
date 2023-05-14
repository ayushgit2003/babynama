import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'button1.dart';

class CarePlanDetails extends StatelessWidget {
  final String PackageName;
  final String Price;
  final String Description;


  CarePlanDetails({
    required this.PackageName,
    required this.Price,
    required this.Description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        elevation: 10,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: 280,
          width: 400,
          decoration: BoxDecoration(
            color: Color(0xff1e293b),
          ),
          //     boxShadow: [
          //   BoxShadow(
          //     spreadRadius: 5, //spread radius
          //     color: Colors.white24,
          //   ),
          // ] ,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 12,right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  PackageName,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(Description,
                        style: GoogleFonts.poppins(
                          color: Color(0xffe5e7eb),
                          height: 1.2,
                          fontSize: 14,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Price,
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Per Month",
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: Color(0xffffffff)),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonButton(ButtonName:"Know More"),
                        CommonButton(ButtonName: "Get Started"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
