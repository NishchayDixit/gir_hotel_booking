import 'package:flutter/material.dart';
import 'package:gir_hotel_booking/home_screen.dart';

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
      child: Theme(
        data: ThemeData(
          useMaterial3: true,
        ),
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                child: Column(
                  children: [
                    //Top Nav
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ));
                          },
                          child: Icon(
                            Icons.arrow_back_rounded,
                            size: 38,
                          ),
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
                    checkInOut(
                        checkin: "2nd Nov. 2022, 06:00 PM",
                        checkout: "2nd Nov. 2022, 06:00 PM"),
                    room_price(
                        room_price: 700,
                        gst: 84,
                        con_charges: 35,
                        platform_fees: 28),
                    ConfirmButton("Confirm Booking"),
                  ],
                ),
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

  int no_rooms = 3;
  int no_adults = 2;

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
      child: Column(
        children: [
          SingleChildScrollView(
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
                    slelectgenderWidget(title: 'Mr.', isActive: true),
                    const SizedBox(width: 12.0),
                    slelectgenderWidget(title: 'Mrs.', isActive: false),
                    const SizedBox(width: 12.0),
                    slelectgenderWidget(title: 'Ms.', isActive: false),
                  ],
                ),
                Container(
                  height: 15,
                ),
              ],
            ),
          ),
          customTextField('First Name'),
          Container(
            height: 18,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 250, 250, 250),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 62,
            child: Row(
              children: const <Widget>[
                Expanded(
                  flex: 1,
                  child: Text(
                    "+91 ",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.keyboard_arrow_down_rounded, size: 22.0),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 8,
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 34, 198, 143),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Number',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 180, 180, 180),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 18,
          ),
          customTextField(
            "Email",
            const Icon(
              Icons.mail_rounded,
              color: Color.fromARGB(255, 34, 198, 143),
            ),
          ),
          Container(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black26),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text(
                    "\t\t\t\t" + "Room",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                Expanded(child: Container()),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (no_rooms > 0) no_rooms--;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color.fromARGB(255, 232, 248, 239),
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Color.fromARGB(255, 36, 198, 144),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      no_rooms.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        setState(() {
                          no_rooms++;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color.fromARGB(255, 232, 248, 239),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Color.fromARGB(255, 36, 198, 144),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black26),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text(
                    "\t\t\t\t" + "Adults",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                Expanded(child: Container()),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (no_adults > 0) no_adults--;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color.fromARGB(255, 232, 248, 239),
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Color.fromARGB(255, 36, 198, 144),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      no_adults.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        setState(() {
                          no_adults++;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color.fromARGB(255, 232, 248, 239),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Color.fromARGB(255, 36, 198, 144),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget checkInOut({checkin, checkout}) {
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
        children: [
          Row(
            children: [
              Text(
                'Check-in',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(child: Container()),
              Text(
                checkin!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Check-out',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(child: Container()),
              Text(
                checkout!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Room',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(child: Container()),
              Text(
                no_rooms.toString()!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Adults',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(child: Container()),
              Text(
                no_adults.toString()!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget room_price({room_price, gst, con_charges, platform_fees}) {
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
        children: [
          Row(
            children: [
              Text(
                'Room Price',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(child: Container()),
              Text(
                '₹' + room_price.toString()!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'GST Charges',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(child: Container()),
              Text(
                '₹' + gst.toString()!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Convenlence Charges',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(child: Container()),
              Text(
                '₹' + con_charges.toString()!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Platform Fees',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Expanded(child: Container()),
              Text(
                '₹' + platform_fees.toString()!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(
            color: Colors.black26,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Expanded(child: Container()),
              Text(
                '₹' +
                    (room_price + gst + con_charges + platform_fees)
                        .toString()!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color.fromARGB(255, 34, 198, 143),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget ConfirmButton(title) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 34, 198, 143),
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 122, 209, 172),
              blurRadius: 3,
              offset: Offset(0, 2))
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget customTextField(title, [icon, border]) {
    return Container(
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
          hintText: "\t\t\t\t" + title,
          hintStyle: TextStyle(fontWeight: FontWeight.w600),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide.none,
          ),
          suffixIcon: icon,
        ),
      ),
    );
  }
}
