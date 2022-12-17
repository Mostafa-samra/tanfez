import 'package:flutter/material.dart';

class CustomDropdownButtonFormField extends StatelessWidget {
  final String? dropdownValue;
  final void Function(String?)? onChanged;
  const CustomDropdownButtonFormField(
      {super.key, this.dropdownValue, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        decoration: const InputDecoration(
          label: Text('السنه الماليه'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        onChanged: onChanged,
        items: <String>[
          '2021/2022',
          '2020/2021',
          '2019/2020',
          '2018/2019',
          '2017/2018',
          '2016/2017',
          '2015/2016',
          '2014/2015',
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
