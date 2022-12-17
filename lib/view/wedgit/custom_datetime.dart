import 'package:flutter/material.dart';

class CustomDateTime extends StatefulWidget {
  const CustomDateTime({super.key});

  @override
  State<CustomDateTime> createState() => _CustomDateTimeState();
}

class _CustomDateTimeState extends State<CustomDateTime> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        '${date.day}/${date.month}/${date.year}',
        style: const TextStyle(fontSize: 20),
      ),
      onPressed: () async {
        DateTime? newDate = await showDatePicker(
            context: context,
            initialDate: date,
            firstDate: DateTime(1995),
            lastDate: DateTime(2100));
        if (newDate == null) return;

        setState(() {
          date = newDate;
        });
      },
    );
  }
}
