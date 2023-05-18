import 'package:flutter/material.dart';
import 'package:babynama/utils/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

class Card2 extends StatefulWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  bool PrimeKnowMoreClick = true;
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
          height: (PrimeKnowMoreClick == true) ? 280 : 480,
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
            padding: const EdgeInsets.only(top: 10.0, left: 12, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Prime Care",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: (PrimeKnowMoreClick == true) ? 80 : 280,
                  child: Row(
                    children: [
                      Container(
                        child: (PrimeKnowMoreClick == true)
                            ? Description(
                                "Pediatric care in 15 minutes,\nlactation,"
                                " nutrition, monthly \nmilestones,"
                                " emergency \nsupport",
                                80)
                            : MoreDescription(),
                        //     : MoreDescription(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (click == true) ? "₹1999" : "₹4999",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          (click == true) ? "Per Month" : "Per 3 Month",
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Color(0xffffffff)),
                        ),
                        Text(
                          (click == true) ? "" : "10 days Refund Policy",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                PrimeKnowMoreClick = !PrimeKnowMoreClick;
                              });
                            },
                            child: CardButton("Know More")),
                        CardButton("Get Started"),
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

  Widget Description(String text, double height) {
    return Container(
      height: height,
      child: Row(
        children: [
          const Icon(
            Icons.check,
            color: Colors.green,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(text,
              style: GoogleFonts.poppins(
                color: Color(0xffe5e7eb),
                height: 1.2,
                fontSize: 14,
              ))
        ],
      ),
    );
  }

  Widget MoreDescription() {
    return Container(
      height:300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Description(
              "Pediatric care in 15 minutes,"
              " \nlactation, nutrition, monthly "
              "\nmilestones, emergency \nsupport",
              80),
          Description("Everything in Basic Care", 30),
          Description("24x7 free pediatrician \nconsultations", 50),
          Description(
              "Monthly growth and \nmilestones tracking by\n pediatrician", 60),
          Description("Lactation and Weaning \nSupport", 40),
        ],
      ),
    );
  }
}
