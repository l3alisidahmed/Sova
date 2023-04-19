import 'package:flutter/material.dart';

class outButtom extends StatelessWidget {
  outButtom({super.key, required this.msg, this.h = 180, this.v = 25});

  double h, v;
  String msg;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        msg,
        style: TextStyle(
          color: Color.fromRGBO(37, 78, 218, 1),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ButtonStyle(
          padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(vertical: v, horizontal: h)),
          side: MaterialStatePropertyAll(BorderSide(
            color: Color.fromRGBO(37, 78, 218, 1),
          ))),
    );
  }
}
