// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sova/presentation/SignUp.dart';
import 'package:sova/presentation/log_in.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(top: 80),
            alignment: Alignment.center,
            child: const Image(image: AssetImage('images/bigSova.png')),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            child: const Image(image: AssetImage('images/Frame.png')),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: 300,
            child: Column(children: [
              Title(
                  color: Colors.black,
                  child: const Text(
                    'Welcome to Sova',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 76, 255),
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              const SizedBox(height: 10),
              const Text(
                'Get comparative estimation on what’s the industry norm of the real states.',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(198, 201, 201, 200),
                ),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
          Column(
            children: [
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUp();
                        },
                      ),
                    );
                  });
                },
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 25, horizontal: 180)),
                    side: MaterialStatePropertyAll(BorderSide(
                      color: Color.fromRGBO(37, 78, 218, 1),
                    ))),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color.fromRGBO(37, 78, 218, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return LogIn();
                        },
                      ),
                    );
                  });
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(37, 78, 218, 1)),
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 25, horizontal: 186)),
                ),
                child: const Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
