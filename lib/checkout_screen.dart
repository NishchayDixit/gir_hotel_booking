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
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
            child: Column(
              children: [
                //Top Nav
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 38,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Booking',
                      style: TextStyle(
                        fontSize:24.0,
                      ),
                    ),
                  ],

                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    children: [
                      Ink.image(image: AssetImage('assets/images/place_1.png'),width: 100,height: 100,fit: BoxFit.cover)
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
