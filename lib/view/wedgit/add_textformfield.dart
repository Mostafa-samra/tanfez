import 'package:flutter/material.dart';

class AddTextFormField extends StatelessWidget {
  final String label;
  final void Function(String)? onChanged;
  final int? maxLines;
  final TextInputType? keyboardType;
  const AddTextFormField(
      {super.key,
      required this.label,
      this.onChanged,
      this.keyboardType,
      this.maxLines});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
            keyboardType: keyboardType,
            maxLines: maxLines,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              label: Text(label),
            ),
            onChanged: onChanged),
      );
}
