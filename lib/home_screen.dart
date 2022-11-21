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
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
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
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                          height: 160,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            addAutomaticKeepAlives: false,
                            // cacheExtent: 10,
                            padding: EdgeInsets.all(20),
                            children: [
                              getNearByPlace(
                                  title: 'Nearby',
                                  path: 'assets/icons/icon_temp.png'),
                              getNearByPlace(
                                  title: 'Tower',
                                  path: 'assets/images/random_1.jpg',
                                  selected: true),
                              getNearByPlace(
                                  title: 'Taj Mahal',
                                  path: 'assets/images/random_2.jpg'),
                              getNearByPlace(
                                  title: 'China',
                                  path: 'assets/images/random_3.webp'),
                              getNearByPlace(
                                  title: 'Waterfall',
                                  path: 'assets/images/random_4.webp'),
                              getNearByPlace(
                                  title: 'Iceland',
                                  path: 'assets/images/random_5.jpg'),
                              getNearByPlace(
                                  title: 'Nidavellir',
                                  path: 'assets/images/random_6.jpg'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Row(
                    children: [
                      Text(
                        'Featured',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text('Show more'),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 220,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            addAutomaticKeepAlives: false,
                            // cacheExtent: 10,
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            children: [
                              getFeaturedPlace(
                                  place: 'Surat',
                                  location: 'abc',
                                  price: '10000',
                                  path: 'assets/images/place_1.png',
                                  stars: 5),
                              getFeaturedPlace(
                                  place: 'Rajkot',
                                  location: 'abc',
                                  price: '8000',
                                  path: 'assets/images/place_2.png',
                                  stars: 3.5),
                              getFeaturedPlace(
                                  place: 'Ahmedabad',
                                  location: 'abc',
                                  price: '5000',
                                  path: 'assets/images/place_3.png',
                                  stars: 4),
                            ],
                          ),
                        ),
                      ),
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

  Widget getFeaturedPlace({place, location, price, path, stars}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
      child: Container(
        width: 340,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(path),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Container()),
                  Image.asset(
                    'assets/icons/icon_save.png',
                    width: 60,
                    height: 60,
                  ),
                ],
              ),
              Expanded(child: Container()),
              Row(
                children: [
                  Text(place,style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getNearByPlace({title, path, selected}) {
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
