import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 20,
                child: Container(),
              ),
              Expanded(
                flex: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: const [
                        Text(
                          'Welcome to',
                          style: TextStyle(
                              fontSize: 32.0, fontWeight: FontWeight.normal),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          'Gir Hotel Booking',
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 34, 198, 143),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 245, 245, 245),
                        border: Border.all(
                          width: 1.5,
                          color: const Color.fromARGB(255, 34, 198, 143),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: const <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text(
                              "+91 ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Image(
                              image: AssetImage('assets/icons/icon_expand_more.png'),
                              height: 20,
                              width: 20,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 8,
                            child: TextField(
                              cursorColor: Color.fromARGB(255, 34, 198, 143),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter your number',
                                hintStyle: TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromARGB(255, 180, 180, 180),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 20.0),
                      child: Row(
                        children: const <Widget>[
                          Expanded(
                            flex: 3,
                            child: Divider(
                              color: Color.fromARGB(255, 215, 215, 215),
                              thickness: 1.5,
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Center(
                              child: Text(
                                'or continue with',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 150, 150, 150),
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Divider(
                              color: Color.fromARGB(255, 215, 215, 215),
                              thickness: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: OutlinedButton.icon(
                        icon: const Image(
                          image: AssetImage('assets/icons/icon_google.png'),
                          height: 20,
                          width: 20,
                        ),
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding:const EdgeInsets.symmetric(horizontal: 22.0, vertical: 12.0),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        label: const Text(
                          ' Continue with Google',
                          style:
                              TextStyle(color: Colors.black87, fontSize: 18.0),
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
    );
  }
}
