// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:sova/presentation/sentEmail.dart';
import 'package:sova/component/sovBarWithArrowback.dart';

class forgetPassword extends StatefulWidget {
  const forgetPassword({super.key});

  @override
  State<forgetPassword> createState() => _forgetPasswordState();
}

// ignore: camel_case_types
class _forgetPasswordState extends State<forgetPassword> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            sovBarWithArrowback(
              Txt1: "Forgot Password",
              Txt2: "Entrer your email to receive a token",
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 32),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Email*'),
                    const SizedBox(height: 5),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 76, 255),
                      ),
                      decoration: const InputDecoration(
                        focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.blue)),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 1.5, color: Colors.red),
                                ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.blue),
                          ),
                          labelText: 'Enter your email',
                          hintText: "example@gmail.com",
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.grey),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30)),
                      validator: (value) {
                        if (emailController.text.isEmpty) {
                          return 'Invalid email';
                        }
                      },
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (_formkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Processing Data')),
                            );
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const sentCode();
                                },
                              ),
                            );
                          }
                        });
                      },
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.symmetric(
                                horizontal: 195, vertical: 25)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 0, 76, 255)),
                      ),
                      child: const Text('Log in'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
