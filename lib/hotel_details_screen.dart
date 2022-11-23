import 'dart:ui';

import 'package:flutter/material.dart';

class HotelDetailsScreen extends StatelessWidget {
  const HotelDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    const ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                      ),
                      child: Image(
                        image: AssetImage('assets/images/place_5.jpg'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Image(
                            width: 45.0,
                            height: 45.0,
                            image: AssetImage('assets/icons/icon_back_bg.png'),
                          ),
                          Image(
                            width: 45.0,
                            height: 45.0,
                            image: AssetImage('assets/icons/icon_save_rect_bg.png'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 15.0),
                      alignment: Alignment.bottomRight,
                      height: 400,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 5.0,
                            sigmaY: 5.0,
                          ),
                          child: Container(
                            height: 160,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200.withOpacity(0.3),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  const ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/random_1.jpg'),
                                      height: 40.0,
                                      width: 40.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/images/random_2.jpg'),
                                      height: 40.0,
                                      width: 40.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Stack(
                                    children: <Widget>[
                                      const Center(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(50),
                                          ),
                                          child: Image(
                                            image: AssetImage(
                                                'assets/images/random_3.webp'),
                                            height: 40.0,
                                            width: 40.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          height: 40.0,
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade500
                                                .withOpacity(0.3),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(50)),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "+10",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 450.0),
                      alignment: Alignment.bottomCenter,
                      color: Colors.transparent,
                      child: Card(
                        margin: const EdgeInsets.symmetric(horizontal: 25.0),
                        color: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        elevation: 2,
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                              vertical: 10.0,
                            ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: const <Widget>[
                                    Flexible(
                                      child: Text(
                                        'Hotel Nova Park International',
                                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
