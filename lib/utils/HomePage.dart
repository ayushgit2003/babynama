import 'package:babynama/utils/QuestionFaq.dart';
// import 'package:babynama/utils/button1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool click = true;
  bool KnowMoreClick=true;
  final String PackageName = "";
  final String Price = "";
  final String Description = "";
  final String PlanDuration = "";
  final String RefundPolicy = "";
  final double CardHeight = 0.0;
  final double ShownHeight = 0.0;
  final String ButtonName="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1e293b),
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
        children: [
          Column(
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
                        color:
                            (click == true) ? Color(0xff2563eb) : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        // border: Border.all(color: Colors.lightBlue, width :1,)
                      ),
                      child: Text(
                        "1 Month",
                        style: GoogleFonts.poppins(
                          color:
                              (click == true) ? Colors.white : Colors.lightBlue,
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
                          color: (click == true)
                              ? Colors.white
                              : Color(0xff2563eb),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.blue,
                            width: 1,
                          )),
                      child: Text(
                        "3 Months",
                        style: GoogleFonts.poppins(
                          color:
                              (click == true) ? Colors.lightBlue : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CarePlans(
                "Basic Care",
                (click == true) ? "₹999" : "₹2499",
                "Pediatric care in 15 minutes",
                 (click == true) ? "Per Month" : "Per 3 Month",
                  (click == true) ? "" : "10 days Refund Policy",
                220,
                30
              ),
              const SizedBox(
                height: 10,
              ),
              CarePlans(
                 "Prime Care",
                (click == true) ? "₹1999" : "₹4999",
                "Pediatric care in 15 minutes,\nlactation, nutrition, monthly \nmilestones, emergency\n support",
                (click == true) ? "Per Month" : "Per 3 Month",
                (click == true) ? "" : "10 days Refund Policy",
                (KnowMoreClick == true)?280:360,
                80
              ),
              const SizedBox(
                height: 10,
              ),
              CarePlans(
                 "Holistic Care",
                (click == true) ? "₹3998" : "₹9999",
                "Dedicated pediatrician for your\nbaby, personal care plan, Best\npossible baby care.",
                (click == true) ? "Per Month" : "Per 3 Month",
                 (click == true) ? "" : "10 days Refund Policy",
                280,
                60
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  " Hear from \nBabynama \n   Parents",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 36,
                    height: 1.0,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  " We are proud to have helped \n"
                  "        thousands of parents",
                  style: GoogleFonts.poppins(
                      color: Color(0xff94a3b8),
                      fontSize: 20,
                      height: 1.3,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "FAQs for Our\n Care Plans",
                  style: GoogleFonts.mavenPro(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                      letterSpacing: .5),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Do you have other questions?",
                  style: GoogleFonts.mavenPro(
                    color: Color(0xff94a3b8),
                    fontSize: 20,
                    height: 1.0,
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                CardButton("Contact Us"),
                const SizedBox(
                  height: 17,
                ),
                Question(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget CarePlans (String PackageName, String Price, String Description,
      String PlanDuration, String RefundPolicy, double CardHeight,double ShownHeight) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        elevation: 10,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: CardHeight,
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
                  PackageName,
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
                        height:  ShownHeight,
                  child: Row(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          PlanDuration,
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Color(0xffffffff)),
                        ),
                        Text(
                          RefundPolicy,
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w500),
                        ),
                        Container(

                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardButton("Know More"),
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
  Widget CardButton(String ButtonName){
    return   GestureDetector(
      onTap: (){
        setState(() {
          KnowMoreClick=!KnowMoreClick;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 120,
        decoration: BoxDecoration(
          color: const Color(0xff2563eb),
          borderRadius: BorderRadius.circular(5),
          // border: Border.all(color: Colors.lightBlue, width :1,)
        ),
        child: Text(
          ButtonName,
          style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600
          ),
        ),
      ),

    );

  }
  }

