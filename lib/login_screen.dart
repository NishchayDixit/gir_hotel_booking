// ignore_for_file: non_constant_identifier_names

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
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 100, 0, 0),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Enter ',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'OTP',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 39, 201, 146),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      rect_OTP('0'),
                      rect_OTP('0'),
                      rect_OTP('0'),
                      rect_OTP('0'),
                      rect_OTP('0'),
                      rect_OTP('0'),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Code has been sent to ",
                          style: TextStyle(
                            fontSize: 16,
                          )),
                      Container(
                        padding: const EdgeInsets.only(
                          bottom: 0.1,
                        ),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Color.fromARGB(255, 39, 201, 146),
                          width:
                              1.0, // This would be the width of the underline
                        ))),
                        child: const Text(
                          "+91 9898989898",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromARGB(255, 39, 201, 146),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text("Resend code in ",
                          style: TextStyle(
                            fontSize: 16,
                          )),
                      Text(
                        "45",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 29, 188, 134),
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

  Widget rect_OTP(String a) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 39, 201, 146)),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      padding: const EdgeInsets.fromLTRB(18, 13, 18, 13),
      child: Text(
        a,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17),
      ),
    );
  }
}
