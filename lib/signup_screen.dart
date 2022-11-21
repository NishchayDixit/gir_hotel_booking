import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          body: Container(
            margin: const EdgeInsets.fromLTRB(10, 150, 10, 150),
            // padding: EdgeInsets.only(top:40,bottom: 40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/signup_card_background.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'Let’s ',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'you In',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 34, 198, 143),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    customTextField("First Name"),
                    customTextField("Last Name"),
                    customTextField(
                      "Email",
                      const Icon(
                        Icons.mail_rounded,
                        color: Color.fromARGB(255, 34, 198, 143),
                      ),
                    ),
                    customTextField(
                      "Select DOB",
                      const Icon(
                        Icons.calendar_month_sharp,
                        color: Color.fromARGB(255, 34, 198, 143),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(left: 7),
                  child: Row(
                    children: <Widget>[
                      Transform.scale(
                        scale: 1.0,
                        child: Checkbox(
                          value: show,
                          activeColor: const Color.fromARGB(255, 34, 198, 143),
                          onChanged: (e) {
                            setState(
                              () {
                                show = !show;
                              },
                            );
                          },
                        ),
                      ),
                      const Text(
                        "Agree with",
                      ),
                      const Text(
                        "Terms & Conditions",
                        style: TextStyle(
                          color: Color.fromARGB(255, 34, 198, 143),
                        ),
                        // style: TextStyle(fontSize: 1.0),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.fromLTRB(80, 15, 80, 15)),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 34, 198, 143)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  child: const Text(
                    'Create Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
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
