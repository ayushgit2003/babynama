import 'package:babynama/components/youtube.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Carousel extends StatefulWidget {

  const Carousel({Key? key}) : super(key: key);

  @override

  State<Carousel> createState() => _CarouselState();

}


class _CarouselState extends State<Carousel> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return CarouselSlider(
        items: [
          Carousel1(Colors.blue[400]!),
          Carousel1(Colors.blue[400]!),
          Carousel1(Colors.blue[400]!)
        ],
        options: CarouselOptions(
          height:500,
          viewportFraction: 1,
          animateToClosest: false,
          // pageSnapping: false,
          onPageChanged: (index, reason) {
            setState(() {
              print(reason.toString());
              currentIndex = index;
            });
          },
          enlargeCenterPage: false,
        ));
  }

  Widget Carousel1(Color color) {
    var _mediaQuery = MediaQuery.of(context);
    return Container(
      width: _mediaQuery.size.width*0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          const Video(),
          Container(
            child: Text("dvaudfbhidiqbdi\nqwidbqwbdb"),
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
