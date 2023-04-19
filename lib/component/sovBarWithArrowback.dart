import 'package:flutter/material.dart';

class sovBarWithArrowback extends StatelessWidget {
  sovBarWithArrowback({super.key, required this.Txt1, required this.Txt2});

  String Txt1, Txt2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 32, top: 40, right: 32),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: 110,
              ),
              Center(
                child: Row(
                  children: [
                    Text(
                      "sova",
                      textAlign: TextAlign.center,
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
            ],
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
            textAlign: TextAlign.center,
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
