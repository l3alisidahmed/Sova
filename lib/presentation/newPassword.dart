// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
import '../component/sovBarWithArrowback.dart';

class newPassword extends StatefulWidget {
  const newPassword({super.key});

  @override
  State<newPassword> createState() => _newPasswordState();
}

class _newPasswordState extends State<newPassword> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            sovBarWithArrowback(
                Txt1: "New Password", Txt2: "Entrer a new password"),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password *',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 76, 255),
                        ),
                        decoration: const InputDecoration(
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1.5, color: Colors.blue)),
                            errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1.5, color: Colors.red),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1.5, color: Colors.blue),
                            ),
                            labelText: 'Must be 8 charcter or more',
                            hintText: "********",
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1.5, color: Colors.grey),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 30)),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 8) {
                            return 'your password must be 8 charcater';
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Repeat Password *',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      child: TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 76, 255),
                        ),
                        decoration: const InputDecoration(
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1.5, color: Colors.blue)),
                            errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1.5, color: Colors.red),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1.5, color: Colors.blue),
                            ),
                            labelText: 'Repeat your password',
                            hintText: "********",
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1.5, color: Colors.grey),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 30)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'password incorrect';
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')));
                        }
                      },
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                            vertical: 25, horizontal: 110)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(37, 78, 218, 1)),
                      ),
                      child: const Text(
                        "Save New Password",
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
          ],
        ),
      )),
    );
  }
}
