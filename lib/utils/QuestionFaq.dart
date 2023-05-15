import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  late   bool _customIcon = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
            title: Text("What should I consider before choosing a plan?",style:GoogleFonts.poppins(
         fontSize: 16,
         color: Colors.white,
         fontWeight: FontWeight.w600
    ),
    ),
          trailing: Icon(_customIcon? Icons.horizontal_rule:Icons.add),
          children:  [
            ListTile(
              title: Text("You should consider the age of your baby,"
                  "\nif the baby was pre-term, the type of delivery,and"
                  " whether you're a working \nmom or homemaker.",style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.white,
              ),
              ),
            ),
          ],
          onExpansionChanged: (bool expanded){
              setState()=> _customIcon = expanded;
        },
        )
      ],
    );
  }
}
