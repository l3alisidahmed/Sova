import 'package:flutter/material.dart';

class Sova extends StatefulWidget {
  const Sova({super.key});

  @override
  State<Sova> createState() => _SovaState();
}

class _SovaState extends State<Sova> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: const Image(image: AssetImage('images/bigSova.png')),
          )
        ],
      ),
    );
  }
}
