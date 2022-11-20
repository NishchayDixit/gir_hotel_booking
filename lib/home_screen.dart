import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Theme(
        data: ThemeData(
          useMaterial3: true,
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
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
                      ),
                      //side menu
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: Image.asset(
                            'assets/images/logo_hotel_booking.png',
                          ),
                        ),
                      ),
                      //app logo
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
                      ),
                      //notification icon
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 80,
                        child: Container(
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 245, 245, 245),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(22),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(left: 25, right: 10),
                                  child: Image.asset(
                                      'assets/icons/icon_search.png')),
                              Expanded(
                                child: TextFormField(
                                  cursorColor:
                                      const Color.fromARGB(255, 34, 198, 143),
                                  decoration: const InputDecoration(
                                    hintText: 'Find Near by Hotel',
                                    hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 189, 189, 189)),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 20,
                        child: Container(
                            padding: EdgeInsets.all(3),
                            child:
                                Image.asset('assets/icons/icon_filter_bg.png')),
                      ),
                      //filter
                    ],
                  ),
                ),
                Container(
                    child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          addAutomaticKeepAlives: false,
                          // cacheExtent: 10,
                          padding: EdgeInsets.all(20),
                          children: [
                            getNearByPlace(
                                'Nearby', 'assets/icons/icon_temp.png'),
                            getNearByPlace(
                                'Tower', 'assets/images/random_1.jpg', true),
                            getNearByPlace(
                                'Taj Mahal', 'assets/images/random_2.jpg'),
                            getNearByPlace(
                                'China', 'assets/images/random_3.webp'),
                            getNearByPlace(
                                'Waterfall', 'assets/images/random_4.webp'),
                            getNearByPlace(
                                'Iceland', 'assets/images/random_5.jpg'),
                            getNearByPlace(
                                'Nidavellir', 'assets/images/random_6.jpg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container getNearByPlace(title, path, [selected]) {
    return Container(
      child: SizedBox(
        width: 95,
        child: Column(
          children: [
            Container(
              decoration: selected != null
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      border: Border.all(
                        color: Color.fromARGB(255, 38, 200, 145),
                        width: 3,
                      ))
                  : null,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset(path, fit: BoxFit.cover),
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
