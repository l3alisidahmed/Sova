import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class elvButtom extends StatefulWidget {
  elvButtom({super.key, required this.Txt, this.h = 180, this.v = 25});

  double v, h;
  String Txt;

  @override
  State<elvButtom> createState() => _elvButtomState();
}

class _elvButtomState extends State<elvButtom> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // if (_formakey.currentState!.validate()) {
        //   ScaffoldMessenger.of(context)
        //       .showSnackBar(const SnackBar(content: Text('Processing Data')));
        // }
      },
      child: Text(
        widget.Txt,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      style: ButtonStyle(
        padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(vertical: widget.v, horizontal: widget.h)),
        backgroundColor:
            MaterialStatePropertyAll(Color.fromRGBO(37, 78, 218, 1)),
      ),
    );
  }
}

// class elvButtom extends StatelessWidget {
//   elvButtom({super.key, required this.Txt, this.h = 170, this.v = 25});

//   double v, h;
//   String Txt;

//   final _formakey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         if (_formakey.currentState!.validate()) {
//           ScaffoldMessenger.of(context)
//               .showSnackBar(const SnackBar(content: Text('Processing Data')));
//         }
//       },
//       child: Text(
//         Txt,
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 16,
//         ),
//       ),
//       style: ButtonStyle(
//         padding: MaterialStatePropertyAll(
//             EdgeInsets.symmetric(vertical: v, horizontal: h)),
//         backgroundColor:
//             MaterialStatePropertyAll(Color.fromRGBO(37, 78, 218, 1)),
//       ),
//     );
//   }
// }
