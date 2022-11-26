import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

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
                    customCard(),
                    customAppBar(),
                    customImagePanel(),
                  ],
                ),
                hotelFacilityComponentDesign(),
                hotelPolicies(),
                reviewComponentDesign(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //region HOTEL-CARD DESIGN
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
                            fontSize: 23, fontWeight: FontWeight.bold),
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
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //endregion

  //region SIDE-IMAGES PANEL
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

  //region SLOT-BOOKING-WIDGET
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
      child: Center(
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
      ),
    );
  }

  //endregion

  //region CUSTOM-APPBAR
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

  //region HOTEL-FACILITY-COMPONENT DESIGN
  Widget hotelFacilityComponentDesign() {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 30.0),
      margin: const EdgeInsets.fromLTRB(27.0, 30.0, 27.0, 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Hotel Facility',
            style: TextStyle(
              fontSize: 20.0,
              color: Color.fromARGB(255, 34, 198, 143),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      customContainerOfFacilities(
                          icon: Icons.live_tv_rounded,
                          color: const Color.fromARGB(255, 34, 198, 143),
                          text: 'LED/LCD'),
                      customContainerOfFacilities(
                          icon: Icons.air_outlined,
                          color: const Color.fromARGB(255, 34, 198, 143),
                          text: 'Air Conditioner'),
                      customContainerOfFacilities(
                          icon: Icons.bathtub_rounded,
                          color: const Color.fromARGB(255, 34, 198, 143),
                          text: 'Bathroom Kit'),
                      customContainerOfFacilities(
                          icon: Icons.medical_services_rounded,
                          color: const Color.fromARGB(255, 34, 198, 143),
                          text: 'First aid kit'),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      customContainerOfFacilities(
                          icon: Icons.wifi_rounded,
                          color: const Color.fromARGB(255, 34, 198, 143),
                          text: 'Internet-Wifi'),
                      customContainerOfFacilities(
                          icon: Icons.phone_in_talk,
                          color: const Color.fromARGB(255, 34, 198, 143),
                          text: 'Intercom'),
                      customContainerOfFacilities(
                          icon: Icons.back_hand_rounded,
                          color: const Color.fromARGB(255, 34, 198, 143),
                          text: 'Sanitization'),
                      customContainerOfFacilities(
                          icon: Icons.directions_car_filled_rounded,
                          color: const Color.fromARGB(255, 34, 198, 143),
                          text: 'Parking'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //endregion

  //region FACILITIES-CONTAINER DESIGN
  Widget customContainerOfFacilities(
      {required icon, required color, required text}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.black12),
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            icon,
            color: color,
            size: 24.0,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Flexible(child: Text(text)),
        ],
      ),
    );
  }

  //endregion

  //region HOTEL-POLICIES DESIGN
  Widget hotelPolicies() {
    return Container(
      margin: const EdgeInsets.fromLTRB(27.0, 15.0, 27.0, 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: const <Widget>[
                Text(
                  'Hotel Policies',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 34, 198, 143),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              customContainerForPolicies(
                  mainText: 'Age Restriction',
                  subText: 'Age should be 18+ for booking.'),
              customContainerForPolicies(
                  mainText: 'Id Proof',
                  subText:
                      'According to government regulations, a valid original Photo ID has to be carried by every person above the age of 18 staying at the hotel. The identification proofs accepted are Driving License, Voters Card, Passport, Adhar Card. Without valid original ID the guest will not be allowed to check in. NOTE: PAN Cards will not be accepted as a Valid ID CARD.'),
              customContainerForPolicies(
                  mainText: 'Are Local Ids Allowed?',
                  subText: 'Yes, Local ids are allowed.'),
              customContainerForPolicies(
                  mainText: 'Are unmarried couples allowed?',
                  subText: 'Yes, unmarried couples are allowed.'),
              customContainerForPolicies(
                  mainText: 'Is smoking allowed?',
                  subText: 'Is smoking allowed?'),
              customContainerForPolicies(
                  mainText: 'Is Drinking allowed?',
                  subText: 'Yes, drinking is allowed.'),
            ],
          ),
        ],
      ),
    );
  }

  //endregion

  //region HOTEL-POLICIES-CARD DESIGN
  Widget customContainerForPolicies({required mainText, required subText}) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.all(10.0),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 244, 244),
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        border: Border.all(
          color: const Color.fromARGB(255, 237, 237, 237),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            mainText,
            style: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
          ),
          Text(
            subText,
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: Colors.black38,
                fontSize: 14.0,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }

  //endregion

  //region REVIEW-COMPONENT DESIGN
  Widget reviewComponentDesign() {
    return Container(
      margin: const EdgeInsets.fromLTRB(27.0, 15.0, 27.0, 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: const <Widget>[
                Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 34, 198, 143),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 235, 235, 235),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Color.fromARGB(255, 34, 198, 143),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: Row(
                          children: const <Widget>[
                            Text(
                              '/',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromARGB(255, 34, 198, 143),
                              ),
                            ),
                            Text(
                              '5',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromARGB(255, 34, 198, 143),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          'Based on ',
                          style: TextStyle(color: Colors.black38, fontSize: 15.0),
                        ),
                        Text(
                          '55 Reviews',
                          style: TextStyle(
                              color: Color.fromARGB(255, 34, 198, 143),
                              fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    margin: const EdgeInsets.only(top: 12.0),
                    child: Column(
                      children: <Widget>[
                        reviewProgressBar(title: 'Excellent', percent: 50, numberOfPeople: '50'),
                        reviewProgressBar(title: 'Very Good', percent: 90, numberOfPeople: '900'),
                        reviewProgressBar(title: 'Average', percent: 100, numberOfPeople: '1000'),
                        reviewProgressBar(title: 'Very Poor', percent: 0, numberOfPeople: '0'),
                        reviewProgressBar(title: 'Poor', percent: 1, numberOfPeople: '1'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  //endregion

  //region REVIEW-PROGRESS-BAR
  Widget reviewProgressBar({required title, required percent, required numberOfPeople}) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Text(title, style: const TextStyle(fontSize: 12.5),textAlign: TextAlign.end,),
        ),
        Expanded(
          flex: 5,
          child: LinearPercentIndicator(
            animation: true,
            lineHeight: 7.0,
            animationDuration: 1500,
            percent: (percent/100),
            backgroundColor:
            const Color.fromARGB(255, 235, 235, 235),
            progressColor: const Color.fromARGB(255, 34, 198, 143),
            barRadius: const Radius.circular(25),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            numberOfPeople,
            style: const TextStyle(color: Colors.black38),
          ),
        ),
      ],
    );
  }
  //endregion

}
