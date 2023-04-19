import 'package:flutter/material.dart';

class MyTextFieled extends StatelessWidget {
  MyTextFieled(
      {super.key,
      required this.txt,
      required this.labelTxt,
      required this.hintxt});

  String txt, labelTxt, hintxt;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            txt,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 35, top: 25, bottom: 25, right: 35),
              label: Text(labelTxt),
              hintText: hintxt,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: Color.fromRGBO(130, 130, 130, 1),
                  ),
                  borderRadius: BorderRadius.circular(5)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.5,
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
