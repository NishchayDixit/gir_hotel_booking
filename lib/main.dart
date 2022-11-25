import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gir_hotel_booking/home_screen.dart';
import 'package:gir_hotel_booking/hotel_details_screen.dart';
import 'package:gir_hotel_booking/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then(
    (value) => runApp(
      const MyApp(),
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Poppins',
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.transparent)),
      // home: const HomeScreen(),
      home:const LoginScreen(),
    );
  }
}
