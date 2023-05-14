import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CommonButton extends StatelessWidget {
  final String ButtonName;

  CommonButton({
    required this.ButtonName,
  });

  @override
  Widget build(BuildContext context) {
    return   Container(
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
    );
  }
}
