import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  final String text1, text2;
  const TextView({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(20)),
              color: Color.fromARGB(255, 67, 165, 245),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 43, 63, 78),
                    offset: Offset(10, 10),
                    blurRadius: 15)
              ]),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  text2,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      );
}
