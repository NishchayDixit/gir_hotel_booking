import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: Column(
                children: [
                  //Top Nav
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_rounded,
                        size: 38,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Booking',
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                  Container(height: 30),
                  custom1(),
                  custom2(),
                  custom3(),
                  custom4(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //region SLOT-BOOKING-WIDGET
  Widget slotBookingWidget(
      {required time, required isAvailable, required isActive}) {
    return Container(
      padding: isAvailable
          ? const EdgeInsets.symmetric(horizontal: 17.5, vertical: 9.0)
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
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
            if (isAvailable == false)
              Text(
                'Not Available',
                style: TextStyle(
                  fontSize: 8.0,
                  color: isActive ? Colors.white : null,
                ),
              ),
          ],
        ),
      ),
    );
  }

  //endregion
  //region SLOT-BOOKING-WIDGET
  Widget slelectgenderWidget({required title, required isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: isActive == true
            ? const Color.fromARGB(255, 34, 198, 143)
            : const Color.fromARGB(255, 237, 237, 237),
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.white : null,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  //endregion

  Widget custom1() {
    return Container(
      height: 120,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 240, 240, 240),
              blurRadius: 8,
              spreadRadius: 0.02,
            )
          ]),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              'assets/images/place_1.png',
              width: 80,
              height: 85,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Text(
                    'Intercontinental Hotel',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/icon_star.png',
                        width: 16,
                        height: 16,
                      ),
                      Text(
                        " 5.0",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 34, 198, 143),
                        ),
                      ),
                      Text(
                        " (4,345 reviews)",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Text(
                        '₹1588',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  // Container(height: 6),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Text(
                        textDirection: TextDirection.ltr,
                        '/ Night',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: EdgeInsets.all(2),
                    child: Row(
                      children: [
                        Expanded(child: Container()),
                        Image.asset('assets/icons/icon_save_white.png',
                            height: 28, width: 28),
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

  Widget custom2() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 240, 240, 240),
              blurRadius: 8,
              spreadRadius: 0.02,
            )
          ]),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Date - Time',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 22),
            padding: EdgeInsets.all(19),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromARGB(255, 250, 250, 250),
            ),
            child: Row(
              children: [
                Text(
                  'November 02, 2022',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Expanded(child: Container()),
                Image.asset('assets/icons/icon_calender.png', height: 30),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 22),
            padding: EdgeInsets.all(19),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromARGB(255, 250, 250, 250),
            ),
            child: Row(
              children: [
                Text(
                  '06:00 PM',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.access_time_rounded,
                  size: 30,
                  color: Color.fromARGB(255, 34, 198, 143),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget custom3() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 240, 240, 240),
              blurRadius: 8,
              spreadRadius: 0.02,
            )
          ]),
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Book a Slot',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                slotBookingWidget(
                    time: '1 hrs', isAvailable: false, isActive: false),
                const SizedBox(width: 12.0),
                slotBookingWidget(
                    time: '3 hrs', isAvailable: true, isActive: true),
                const SizedBox(width: 12.0),
                slotBookingWidget(
                    time: '6 hrs', isAvailable: true, isActive: false),
                const SizedBox(width: 12.0),
                slotBookingWidget(
                    time: '12 hrs', isAvailable: true, isActive: false),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget custom4() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 240, 240, 240),
              blurRadius: 8,
              spreadRadius: 0.02,
            )
          ]),
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                slelectgenderWidget(
                    title: 'Mr.', isActive: true),
                const SizedBox(width: 12.0),
                slelectgenderWidget(
                    title: 'Mrs.', isActive: false),
                const SizedBox(width: 12.0),
                slelectgenderWidget(
                    title: 'Ms.', isActive: false),
              ],
            ),
            Container(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget customTextField(title, [icon, border]) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(22, 2.5, 22, 2.5),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 250, 250, 250),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: border != null
                ? Border.all(
              color: const Color.fromARGB(255, 34, 198, 143),
              width: 1.5,
            )
                : null,
          ),
          child: TextFormField(
            cursorColor: const Color.fromARGB(255, 34, 198, 143),
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    width: 1.5,
                    color: Color.fromARGB(255, 34, 198, 143),
                  )),
              fillColor: const Color.fromARGB(255, 34, 198, 143),
              hintText: title,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide.none,
              ),
              suffixIcon: icon,
            ),
          ),
        ),
      ],
    );
  }
}
