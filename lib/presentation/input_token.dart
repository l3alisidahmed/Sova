import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sova/presentation/newPassword.dart';
import 'package:sova/component/sovBarWithArrowback.dart';

class InputToken extends StatefulWidget {
  const InputToken({super.key});

  @override
  State<InputToken> createState() => _InputTokenState();
}

class _InputTokenState extends State<InputToken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          sovBarWithArrowback(
              Txt1: "Input Token",
              Txt2: "Entrer the token you received to rest your password"),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 32, right: 32),
            child: Column(
              children: [
                Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const input(),
                      const input(),
                      const input(),
                      const input(),
                      const input(),
                      const input(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const newPassword();
                          },
                        ),
                      );
                    });
                  },
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 150, vertical: 25)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 0, 76, 255)),
                  ),
                  child: const Text('Submit'),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Didn't receive an email?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(197, 163, 163, 163),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Resend',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 76, 255),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class input extends StatefulWidget {
  const input({super.key});

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 60,
      child: TextFormField(
        validator: (value) {
          if (value!.isNotEmpty) {
            return "code incorrect";
          }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        onChanged: (value) {
          setState(() {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          });
        },
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1)
        ],
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 1.5),
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
