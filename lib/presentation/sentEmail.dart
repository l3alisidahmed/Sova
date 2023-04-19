// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:sova/presentation/input_token.dart';
import 'package:sova/presentation/ForgetPassword.dart';

class sentCode extends StatefulWidget {
  const sentCode({super.key});

  @override
  State<sentCode> createState() => _sentCodeState();
}

class _sentCodeState extends State<sentCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(left: 32, right: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/Email campaign-rafiki.png",
                  width: 200,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Code Sent!",
                  style: TextStyle(
                    color: Color.fromRGBO(37, 78, 218, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: const Text(
                        "A six digits code has been sent to your email ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.6,
                          fontSize: 20,
                          color: Color.fromRGBO(130, 130, 130, 1),
                        ),
                      ),
                    ),
                    // Text("Example@gmail.com")
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return forgetPassword();
                            },
                          ),
                        );
                      },
                    );
                  },
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 25, horizontal: 140)),
                      side: MaterialStatePropertyAll(BorderSide(
                        color: Color.fromRGBO(37, 78, 218, 1),
                      ))),
                  child: const Text(
                    "Change Email",
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
                            return InputToken();
                          },
                        ),
                      );
                    });
                  },
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 25, horizontal: 140)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(37, 78, 218, 1)),
                  ),
                  child: const Text(
                    "Submit Token",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
}
