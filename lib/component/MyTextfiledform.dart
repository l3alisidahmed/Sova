import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class formFiled extends StatefulWidget {
  formFiled(
      {super.key,
      required this.txt,
      required this.labelTxt,
      required this.hintxt});

  String txt, labelTxt, hintxt;

  @override
  State<formFiled> createState() => _formFiledState();
}

class _formFiledState extends State<formFiled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.txt,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Form(
            key: widget.key,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please write you name";
                }
                return null;
              },
              decoration: InputDecoration(
                label: Text(widget.labelTxt),
                hintText: widget.hintxt,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
