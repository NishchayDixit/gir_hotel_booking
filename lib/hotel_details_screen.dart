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
          body: Column(
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
                  customCard(),
                  customAppBar(),
                  customImagePanel(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //region HOTELCARD DESIGN
  Widget customCard() {
    return Container(
      margin: const EdgeInsets.only(top: 440.0),
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
              vertical: 15.0,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Flexible(
                      child: Text(
                        'Hotel Nova Park International',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        border: Border.all(
                          color: Colors.black12,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: const <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Color.fromARGB(255, 34, 198, 143),
                              size: 24.0,
                            ),
                            Text(
                              'Map',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 18.0,
                        color: Color.fromARGB(255, 34, 198, 143),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Flexible(
                        child: Text(
                          'Hotel Star Place, Moti tank Chowk, Parikashi Nagar, Sadar, Rajkot, Gujarat-362001',
                          style:
                              TextStyle(fontSize: 13.0, color: Colors.black45),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Flexible(
                        child: Text(
                          'Book A Slot',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color.fromARGB(255, 34, 198, 143),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      slotBookingWidget(
                          time: '1 hrs', isAvailable: false, isActive: false),
                      const SizedBox(width: 5.0),
                      slotBookingWidget(
                          time: '3 hrs', isAvailable: true, isActive: true),
                      const SizedBox(width: 5.0),
                      slotBookingWidget(
                          time: '6 hrs', isAvailable: true, isActive: false),
                      const SizedBox(width: 5.0),
                      slotBookingWidget(
                          time: '12 hrs', isAvailable: true, isActive: false),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  //endregion

  //region SIDEIMAGES PANEL
  Widget customImagePanel() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        child: Image(
                          image: AssetImage('assets/images/random_1.jpg'),
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
                          image: AssetImage('assets/images/random_2.jpg'),
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
                                image:
                                    AssetImage('assets/images/random_3.webp'),
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
                                color: Colors.grey.shade500.withOpacity(0.3),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(50)),
                              ),
                              child: const Center(
                                child: Text(
                                  "+10",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.0),
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
      ],
    );
  }
  //endregion

  //region SLOTBOOKINGWIDGET
  Widget slotBookingWidget(
      {required time, required isAvailable, required isActive}) {
    return Container(
      padding: isAvailable
          ? const EdgeInsets.symmetric(horizontal: 13.0, vertical: 9.0)
          : const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      decoration: BoxDecoration(
        color: isActive == true
            ? const Color.fromARGB(255, 34, 198, 143)
            : const Color.fromARGB(255, 237, 237, 237),
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Text(
            time,
            style: TextStyle(
                color: isActive ? Colors.white : null,
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          ),
          if (isAvailable == false)
            Text(
              'Not Available',
              style: TextStyle(
                fontSize: 10.0,
                color: isActive ? Colors.white : null,
              ),
            ),
        ],
      ),
    );
  }
  //endregion

  //region CUSTOMAPPBAR
  Widget customAppBar() {
    return Container(
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
    );
  }
  //endregion
}
