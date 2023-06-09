import 'package:babynama/utils/QuestionFaq.dart';
// import 'package:babynama/utils/button1.dart';
import 'package:flutter/material.dart';
import 'package:babynama/CarePlansCards/BasicCareCard.dart';
import 'package:babynama/CarePlansCards/PrimeCareCard.dart';
import 'package:babynama/CarePlansCards/HolisticCareCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:babynama/components/CarouselSlider.dart';

class MyHomePage extends StatefulWidget {


  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
bool KnowMoreClick=true;
 bool click = true;
Widget CardButton(String ButtonName) {

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
        color: const Color(0xff2563eb),
        borderRadius: BorderRadius.circular(6),
        // border: Border.all(color: Colors.lightBlue, width :1,)
      ),
      child: Text(
        ButtonName,
        style: GoogleFonts.poppins(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
      ),
    ),
  );

}
class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xff1e293b),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: SizedBox(
            height:_mediaQuery.size.height*0.08,
            width: _mediaQuery.size.width*0.32,
            child: Image.asset(
              'assets/logo-new.jpeg',
            )),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Container(
                margin: EdgeInsets.only(right: 8, bottom: 2),
                height:_mediaQuery.size.height*0.07,
                width: _mediaQuery.size.width*0.14,
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
                SizedBox(
                height:_mediaQuery.size.height*0.02,
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
                      height:_mediaQuery.size.height*0.06,
                      width: _mediaQuery.size.width*0.35,
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
                      height:_mediaQuery.size.height*0.06,
                      width: _mediaQuery.size.width*0.35,
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
           SizedBox(
            height:_mediaQuery.size.height*0.03,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card1(),
              Card2(),
              Card3(),
            ],
          ),
          SizedBox(
            height:_mediaQuery.size.height*0.04,
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
                SizedBox(
                  height: _mediaQuery.size.height*0.02,
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
                 SizedBox(
                  height: _mediaQuery.size.height*0.03,
                ),
                Carousel(),
                SizedBox(
                  height: _mediaQuery.size.height*0.07,
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
                 SizedBox(
                  height: _mediaQuery.size.height*0.03,
                ),
                Text(
                  "Do you have other questions?",
                  style: GoogleFonts.mavenPro(
                    color: Color(0xff94a3b8),
                    fontSize: 20,
                    height: 1.0,
                  ),
                ),
                SizedBox(
                  height: _mediaQuery.size.height*0.03,
                ),
                CardButton("Contact Us"),
                SizedBox(
                  height: _mediaQuery.size.height*0.02,
                ),
                Question(),
                const SizedBox(
                  height: 17,
                ),

              ],
            ),

          )
        ],
      ),
    );
  }

//   Widget CarePlans(
//       String PackageName,
//       String Price,
//       String Description,
//       String PlanDuration,
//       String RefundPolicy,
//       double CardHeight,
//       double ShownHeight) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Card(
//         elevation: 10,
//         shadowColor: Colors.black,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//         child: Container(
//           height: CardHeight,
//           width: 400,
//           decoration: BoxDecoration(
//             color: Color(0xff1e293b),
//           ),
// //     boxShadow: [
// //   BoxShadow(
// //     spreadRadius: 5, //spread radius
// //     color: Colors.white24,
// //   ),
// // ] ,
//           child: Padding(
//             padding: const EdgeInsets.only(top: 10.0, left: 12, right: 10.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   PackageName,
//                   style: GoogleFonts.poppins(
//                     color: Colors.white,
//                     fontSize: 23,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Container(
//                   height: ShownHeight,
//                   child: Row(
//                     children: [
//                       const Icon(
//                         Icons.check,
//                         color: Colors.green,
//                       ),
//                       const SizedBox(
//                         width: 8,
//                       ),
//                       Text(Description,
//                           style: GoogleFonts.poppins(
//                             color: Color(0xffe5e7eb),
//                             height: 1.2,
//                             fontSize: 14,
//                           ))
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       Price,
//                       style: GoogleFonts.poppins(
//                           fontSize: 16,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           PlanDuration,
//                           style: GoogleFonts.poppins(
//                               fontSize: 12, color: Color(0xffffffff)),
//                         ),
//                         Text(
//                           RefundPolicy,
//                           style: GoogleFonts.poppins(
//                               fontSize: 12,
//                               color: Color(0xffffffff),
//                               fontWeight: FontWeight.w500),
//                         ),
//                         Container(),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 18,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         GestureDetector(
//                           onTap:
//                                   (){
//                                 setState(() {
//                                   KnowMoreClick=!KnowMoreClick;
//                                 });
//                               },
//                             child: CardButton("Know More")),
//                         CardButton("Get Started"),
//                       ],
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

}
