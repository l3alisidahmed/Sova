import 'package:flutter/material.dart';

class sovBarWithoutArrowback extends StatelessWidget {
  sovBarWithoutArrowback({super.key, required this.Txt1, required this.Txt2});

  String Txt1, Txt2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 32, top: 40, right: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "sova",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Color.fromRGBO(37, 78, 218, 1),
                  ),
                ),
                Text(
                  ".",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Color.fromRGBO(254, 113, 58, 1),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            Txt1,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
              fontFamily: "Inter",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            Txt2,
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(130, 130, 130, 1),
            ),
          )
        ],
      ),
    );
  }
}
