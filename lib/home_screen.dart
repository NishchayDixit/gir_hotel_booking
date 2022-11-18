import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Color.fromARGB(255, 237, 237, 238),
                          width: 1.75),
                    ),
                    child: ImageIcon(
                      AssetImage('assets/icons/icon_side_menu.png'),
                      color: Color.fromARGB(255, 34, 198, 143),
                    ),
                  ), //side menu
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: Image.asset(
                        'assets/images/logo_hotel_booking.png',
                      ),
                    ),
                  ), //app logo
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Color.fromARGB(255, 237, 237, 238),
                          width: 1.75),
                    ),
                    child: ImageIcon(
                      AssetImage('assets/icons/icon_notification.png'),
                      color: Color.fromARGB(255, 34, 198, 143),
                    ),
                  ), //notification icon
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 184, 184, 184),
                        hintText: 'Find Near by Hotel',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: ImageIcon(
                            AssetImage('assets/icons/icon_search.png'))),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
