import 'package:flutter/material.dart';

class HotelDetailsScreen extends StatelessWidget {
  const HotelDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/hotel_room.jpeg'),
          fit: BoxFit.fitWidth,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(1.0),
          bottomRight: Radius.circular(1.0),
        ),
      ),
      child:const SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
