import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String tileL;
  final IconData icon;
  final void Function()? onTap;
  const CustomListTile(
      {super.key,
      required this.tileL,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.red, width: 2)),
          child: ListTile(
            title: Text(
              tileL,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: Icon(icon),
            onTap: onTap,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
          )),
    );
  }
}
