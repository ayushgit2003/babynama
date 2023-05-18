import 'package:flutter/material.dart';
import 'package:babynama/utils/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';

class Card3 extends StatefulWidget {
  const Card3({Key? key}) : super(key: key);

  @override

  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  bool HolisticClick = true;
  bool ButtonChangeColor = true;
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
          height:(HolisticClick == true) ? 280 : 550,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xff1e293b),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 12, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Holistic Care",
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
                  height: (HolisticClick == true) ? 60 : 320,
                  child: Column(
                    children: [
                      Container(
                        child: (HolisticClick == true)? Description(
                            "Dedicated pediatrician for \nyour baby, personal care plan,\nBest possible baby care",
                            60): MoreDescription(),
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
                      (click == true) ? "₹3998" : "₹9999",
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
                                print('ayush');
                                HolisticClick=!HolisticClick;
                                ButtonChangeColor=!ButtonChangeColor;
                              });
                            },
                            child: Button("Know More")
                        ),
                        Button("Get Started"),
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
      child:
      Row(
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
      height: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Description(
              "Dedicated pediatrician for \nyour baby, personal care plan,\nBest possible baby care",
              60),
          Description("Everything included in the \nPRIME Plan", 40),
          Description("Dedicated pediatrician just for \nyour baby", 40),
          Description("Personalized care plan for \nyour baby and you", 40),
          Description("All Consultations and \nworkshops free", 40),
          Description(
              "We keep adding new services\n to provide more value to you", 40)
        ],
      ),
    );
  }
  Widget Button(String ButtonName) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 120,
        decoration: BoxDecoration(
          color: (ButtonChangeColor==true)? Color(0xff2563eb):Color(0xff1e293b),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          ButtonName,
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
    );

  }
}
