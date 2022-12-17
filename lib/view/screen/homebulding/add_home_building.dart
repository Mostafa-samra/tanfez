import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tanfezzaty/view/wedgit/add_textformfield.dart';

import '../../../../models/tanfez.dart';
import '../../wedgit/year_textformbotomlist.dart';
import '../homescreen.dart';

class AddHomeBuilding extends StatefulWidget {
  const AddHomeBuilding({super.key});

  @override
  State<AddHomeBuilding> createState() => _AddHomeBuildingState();
}

class _AddHomeBuildingState extends State<AddHomeBuilding> {
  final _formKey = GlobalKey<FormState>();
  String? operationCode;
  String? region;
  String? fiscalYear;
  String? comparisonValue;
  String? amountPaid;
  String? couponDate;
  String? operationName;
  String? operationPosition;
  String? notes;

  submetDate() async {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      Hive.box<HomeBuilding>('homebulding').add(HomeBuilding(
          operationCode: operationCode,
          region: region,
          fiscalYear: fiscalYear,
          comparisonValue: comparisonValue,
          amountPaid: amountPaid,
          couponDate: couponDate,
          operationName: operationName,
          operationPosition: operationPosition,
          notes: notes));
    }
    Navigator.of(context).pushAndRemoveUntil<void>(
        MaterialPageRoute<void>(
            builder: (BuildContext context) => const HomeScreen()),
        ModalRoute.withName('/'));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('إضافه عقارى (منزلى)'),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ListView(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: AddTextFormField(
                      label: 'كود العمليه',
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        setState(() {
                          operationCode = val;
                        });
                      },
                    ),
                  ),
                  AddTextFormField(
                    label: 'المنطقه',
                    onChanged: (val) {
                      setState(() {
                        region = val;
                      });
                    },
                  ),
                  CustomDropdownButtonFormField(
                    dropdownValue: fiscalYear,
                    onChanged: (String? newValue) {
                      setState(() {
                        fiscalYear = newValue;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'قيمه المقايسه',
                    onChanged: (val) {
                      setState(() {
                        comparisonValue = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'المبلغ المسدد',
                    onChanged: (val) {
                      setState(() {
                        amountPaid = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'تاريخ القسيمه',
                    keyboardType: TextInputType.datetime,
                    onChanged: (val) {
                      setState(() {
                        couponDate = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'إسم العمليه',
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    onChanged: (val) {
                      setState(() {
                        operationName = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'موقف العمليه',
                    onChanged: (val) {
                      setState(() {
                        operationPosition = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'ملاحظات',
                    maxLines: 2,
                    onChanged: (val) {
                      setState(() {
                        notes = val;
                      });
                    },
                  ),
                  ElevatedButton(
                      onPressed: submetDate,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Icon(Icons.save), Text("حفظ")],
                      ))
                ]),
              ),
            ),
          ),
        ),
      );
}
