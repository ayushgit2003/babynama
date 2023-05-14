import 'package:flutter/material.dart';

class CarePlanDetails extends StatelessWidget {
  const CarePlanDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Expanded(
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color:Colors.black,
            borderRadius: BorderRadiusDirectional.circular(10)
          ),
        ),
      ),
    );
  }
}
