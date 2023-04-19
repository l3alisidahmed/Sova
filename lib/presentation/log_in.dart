import 'package:flutter/material.dart';
import 'package:sova/presentation/SignUp.dart';
import 'package:sova/component/sovBarWithoutArrowback.dart';
import 'package:sova/presentation/ForgetPassword.dart';

class LogIn extends StatefulWidget {
  LogIn({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _value = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          sovBarWithoutArrowback(
              Txt1: "Log in", Txt2: "Log in to your account"),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Form(
              key: widget._formKey,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Email*'),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 76, 255),
                    ),
                    decoration: const InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.5, color: Colors.red),
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
                    validator: (value) {
                      if (emailController.text.isEmpty) {
                        return 'Invalid email';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password *',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 76, 255),
                    ),
                    decoration: const InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.5, color: Colors.red),
                        ),
                        // focusedErrorBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(width: 1.5, color: Colors.red),
                        // ),
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
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 8) {
                        return 'your password must be 8 charcater';
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    child: Row(
                      children: [
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: Checkbox(
                              value: _value,
                              onChanged: (value) {
                                setState(() {
                                  if (_value == false) {
                                    _value = true;
                                  } else {
                                    _value = false;
                                  }
                                });
                              }),
                        ),
                        const SizedBox(width: 5),
                        const Text('Remember Me'),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return forgetPassword();
                                  },
                                ),
                              );
                            });
                          },
                          child: const Text(
                            'Forgeot Password',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 76, 255),
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
          const SizedBox(height: 30),
          Container(
            width: 300,
            height: 50,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: ElevatedButton(
              onPressed: () {
                if (widget._formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(Color.fromARGB(255, 0, 76, 255)),
              ),
              child: const Text('Log in'),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(
                  color: Color.fromARGB(197, 128, 127, 127),
                  fontSize: 15,
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignUp();
                        },
                      ),
                    );
                  });
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 76, 255),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
