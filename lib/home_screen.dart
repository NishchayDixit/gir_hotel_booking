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
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    children: [
                      CustomAppBar(),
                      CustomSearch(),
                      AllNearByPlaces(),
                      AllFeaturedPlaces(),
                      AllRecommendationPlaces(),
                      AllHotels(),
                    ],
                  ),
                ),
              ),
            )));
  }

  Widget AllRecommendationPlaces() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Row(
            children: [
              const Text(
                'Our Recommendation',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(child: Container()),
              const Text('Show more'),
              const Icon(Icons.navigate_next),
            ],
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      addAutomaticKeepAlives: false,
                      // cacheExtent: 10,
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      children: [
                        getRecommendationPlace(
                            place: 'City Rome',
                            location: 'Surat',
                            price: '10000',
                            time: 'Night',
                            path: 'assets/images/place_1.png',
                            stars: 5),
                        getRecommendationPlace(
                            place: 'Imperial palace',
                            location: 'Rajkot',
                            price: '8000',
                            time: 'Day',
                            path: 'assets/images/place_2.png',
                            stars: 3.5),
                        getRecommendationPlace(
                            place: 'Taj hotel',
                            location: 'Ahmedabad',
                            price: '5000',
                            time: 'Night',
                            path: 'assets/images/place_3.png',
                            stars: 4),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget getRecommendationPlace({place, location, time, price, path, stars}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
      child: Container(
        width: 175,
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
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
              Expanded(child: Container()),
              Row(
                children: [
                  Text(
                    place,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 2.0, 8.0, 0),
                    child: Icon(
                      Icons.location_on,
                      size: 20,
                      color: Color.fromARGB(255, 34, 198, 143),
                    ),
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: EdgeInsets.fromLTRB(8, 4, 12, 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/icon_star.png',
                          width: 18,
                          height: 18,
                        ),
                        Text(
                          " " + stars.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 34, 198, 143),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    ' / ',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '₹' + price,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getHotel({place, location, time, price, path, stars}) {
    return Container(
      height: 300,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          spreadRadius: 0.1,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(path),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 140,
                height: 140,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/icons/icon_save.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                )
                ,
              ),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                        image: AssetImage(path),
                        fit: BoxFit.cover,
                        width: 140,
                        height: 140),
                  ),
                ],
              ),*/
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          place,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 2.0, 8.0, 0),
                          child: Icon(
                            Icons.location_on,
                            size: 14,
                            color: Color.fromARGB(255, 34, 198, 143),
                          ),
                        ),
                        Text(
                          location,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                            color: Colors.black12,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/icon_star.png',
                                width: 12,
                                height: 12,
                              ),
                              Text(
                                " " + stars.toString(),
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 34, 198, 143),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          time,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          ' / ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '₹' + price,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget AllHotels() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Row(
            children: [
              const Text(
                'All hotels',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(child: Container()),
              const Text('Show more'),
              const Icon(Icons.navigate_next),
            ],
          ),
        ),
        Container(
          height: 1000,
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 150 / 235,
            addAutomaticKeepAlives: false,
            // cacheExtent: 4,
            children: [
              getHotel(
                  place: 'City Rome',
                  location: 'Surat',
                  price: '10000',
                  time: 'Night',
                  path: 'assets/images/place_1.png',
                  stars: 5),
              getHotel(
                  place: 'City Rome',
                  location: 'Surat',
                  price: '10000',
                  time: 'Night',
                  path: 'assets/images/place_1.png',
                  stars: 5),
              getHotel(
                  place: 'City Rome',
                  location: 'Surat',
                  price: '10000',
                  time: 'Night',
                  path: 'assets/images/place_1.png',
                  stars: 5),
              getHotel(
                  place: 'Imperial palace',
                  location: 'Rajkot',
                  price: '8000',
                  time: 'Day',
                  path: 'assets/images/place_2.png',
                  stars: 3.5),
              getHotel(
                  place: 'Taj hotel',
                  location: 'Ahmedabad',
                  price: '5000',
                  time: 'Night',
                  path: 'assets/images/place_3.png',
                  stars: 4),
            ],
          ),
        ),
      ],
    );
  }

  Widget AllFeaturedPlaces() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Row(
            children: [
              Text(
                'Featured',
                style: TextStyle(
                  fontSize: 20,
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
          padding: EdgeInsets.only(bottom: 25),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    addAutomaticKeepAlives: false,
                    // cacheExtent: 10,
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    children: [
                      getFeaturedPlace(
                          place: 'City Rome',
                          location: 'Surat',
                          price: '10000',
                          time: 'Night',
                          path: 'assets/images/place_1.png',
                          stars: 5),
                      getFeaturedPlace(
                          place: 'Imperial palace',
                          location: 'Rajkot',
                          price: '8000',
                          time: 'Day',
                          path: 'assets/images/place_2.png',
                          stars: 3.5),
                      getFeaturedPlace(
                          place: 'Taj hotel',
                          location: 'Ahmedabad',
                          price: '5000',
                          time: 'Night',
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
    );
  }

  Widget getFeaturedPlace({place, location, time, price, path, stars}) {
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
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              Expanded(child: Container()),
              Row(
                children: [
                  Text(
                    place,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 2.0, 8.0, 0),
                    child: Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 34, 198, 143),
                    ),
                  ),
                  Text(
                    location,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    ' / ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '₹' + price,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: EdgeInsets.fromLTRB(8, 4, 12, 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/icon_star.png',
                          width: 25,
                          height: 25,
                        ),
                        Text(
                          " " + stars.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 34, 198, 143),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget AllNearByPlaces() {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                addAutomaticKeepAlives: false,
                // cacheExtent: 10,
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                children: [
                  getNearByPlace(
                      title: 'Nearby', path: 'assets/icons/icon_temp.png'),
                  getNearByPlace(
                      title: 'Tower',
                      path: 'assets/images/random_1.jpg',
                      selected: true),
                  getNearByPlace(
                      title: 'Taj Mahal', path: 'assets/images/random_2.jpg'),
                  getNearByPlace(
                      title: 'China', path: 'assets/images/random_3.webp'),
                  getNearByPlace(
                      title: 'Waterfall', path: 'assets/images/random_4.webp'),
                  getNearByPlace(
                      title: 'Iceland', path: 'assets/images/random_5.jpg'),
                  getNearByPlace(
                      title: 'Nidavellir', path: 'assets/images/random_6.jpg'),
                ],
              ),
            ),
          ),
        ],
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
                  height: selected != null ? 77 : 80,
                  width: selected != null ? 77 : 80,
                  child: Image.asset(path, fit: BoxFit.cover),
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CustomSearch() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                      child: Image.asset('assets/icons/icon_search.png')),
                  Expanded(
                    child: TextFormField(
                      cursorColor: const Color.fromARGB(255, 34, 198, 143),
                      decoration: const InputDecoration(
                        hintText: 'Find Near by Hotel',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 189, 189, 189)),
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
                child: Image.asset('assets/icons/icon_filter_bg.png')),
          ),
          //filter
        ],
      ),
    );
  }

  Widget CustomAppBar() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  color: Color.fromARGB(255, 237, 237, 238), width: 1.75),
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
                  color: Color.fromARGB(255, 237, 237, 238), width: 1.75),
            ),
            child: ImageIcon(
              AssetImage('assets/icons/icon_notification.png'),
              color: Color.fromARGB(255, 34, 198, 143),
            ),
          ),
          //notification icon
        ],
      ),
    );
  }
}
