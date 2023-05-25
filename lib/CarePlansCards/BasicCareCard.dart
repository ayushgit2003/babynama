import 'package:flutter/material.dart';
import 'package:babynama/utils/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

class Card1 extends StatefulWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  bool BasicKnowMoreClick = true;
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        elevation: 10,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: (BasicKnowMoreClick == true) ? _mediaQuery.size.height*0.35: _mediaQuery.size.height*0.6,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff1e293b),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 12, right: 10.0),
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
                SizedBox(
                  height: _mediaQuery.size.height*0.02,
                ),
                Container(
                  height: (BasicKnowMoreClick == true) ? 24: 180,
                  child: Row(
                    children: [
                      Container(
                        child:
                      (BasicKnowMoreClick==true)?Description("Pediatric care in 15 minutes"):
                      MoreDescription(),
                        //     : MoreDescription(),
                      ),
                      ]
          ),
                ),


                SizedBox(
                  height: _mediaQuery.size.height*0.015,
                ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (click == true) ? "₹999" : "₹2499",
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
                                      BasicKnowMoreClick = !BasicKnowMoreClick;
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

  Widget Description(String text) {
    return Container(
      height: 38,
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
  Widget MoreDescription(){
    return Container(
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Description("Pediatric care in 15 minutes"),
              Description("Instant chat with pediatricians\non WhatsApp"),
              const SizedBox(
                width: 6,
              ),
              Description("Free pediatrician consultations\n(day)"),

              Description("Live Yoga Sessions")
            ],
      ),
    );
  }
 }
