import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarePlanDetails extends StatelessWidget {
  const CarePlanDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 200,
        width: 400,
        decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
          BoxShadow(
          blurRadius: 10.0,
            spreadRadius: 2,
            color: Colors.grey,
          ),
        ] ,
            borderRadius: BorderRadiusDirectional.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Basic Care",
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
                  Text("Pediatric care in 15 minutes",
                      style: GoogleFonts.poppins(
                        color: Color(0xffe5e7eb),
                        fontSize: 14,
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
