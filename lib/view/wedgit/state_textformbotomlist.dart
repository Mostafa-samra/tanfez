import 'package:flutter/material.dart';

class StateDropdownButtonFormField extends StatelessWidget {
  final String? dropdownValue;
  final void Function(String?)? onChanged;
  const StateDropdownButtonFormField(
      {super.key, required this.dropdownValue, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        decoration: const InputDecoration(
          label: Text('الحاله'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        onChanged: onChanged,
        items: <String>[
          '    ',
          'تم السداد',
          'لم يتم السداد',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        validator: (String? value) {
          if (value == null) {
            return 'يجب ان تقوم بالاختيار.';
          }
          return null;
        },
      ),
    );
  }
}
