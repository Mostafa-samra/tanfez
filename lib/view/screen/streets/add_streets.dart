import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tanfezzaty/view/screen/homescreen.dart';
import 'package:tanfezzaty/view/wedgit/add_textformfield.dart';

import '../../../../models/tanfez.dart';
import '../../wedgit/year_textformbotomlist.dart';

class AddStreets extends StatefulWidget {
  const AddStreets({super.key});

  @override
  State<AddStreets> createState() => _AddStreetsState();
}

class _AddStreetsState extends State<AddStreets> {
  final _formKey = GlobalKey<FormState>();
  String? operationCode;
  String? region;
  String? fiscalYear;
  String? comparisonValue;
  String? assayNumber;
  String? theValueOfTheAmountOfSupervisionAndTax;
  String? couponDate;
  String? outgoingNumber;
  String? issuedDate;
  String? operationName;
  String? exemptionRate;
  String? notes;
  String? supervisionDevice;
  String? oversightValue;
  String? taxValue;

  submetDate() async {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      Hive.box<Streets>('streets').add(Streets(
          operationCode: operationCode,
          region: region,
          fiscalYear: fiscalYear,
          comparisonValue: comparisonValue,
          assayNumber: assayNumber,
          theValueOfTheAmountOfSupervisionAndTax:
              theValueOfTheAmountOfSupervisionAndTax,
          couponDate: couponDate,
          outgoingNumber: outgoingNumber,
          issuedDate: issuedDate,
          operationName: operationName,
          exemptionRate: exemptionRate,
          notes: notes,
          supervisionDevice: supervisionDevice,
          oversightValue: oversightValue,
          taxValue: taxValue));
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
          title: const Text('إضافه شوارع'),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ListView(children: [
                  AddTextFormField(
                    label: 'كود العمليه',
                    keyboardType: TextInputType.number,
                    onChanged: (val) {
                      setState(() {
                        operationCode = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'المنطقة',
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
                    label: 'قيمة المقايسه',
                    onChanged: (val) {
                      setState(() {
                        comparisonValue = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'رقم القسيمه',
                    onChanged: (val) {
                      setState(() {
                        assayNumber = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'قيمة مبلغ الإشراف والضريبه',
                    onChanged: (val) {
                      setState(() {
                        theValueOfTheAmountOfSupervisionAndTax = val;
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
                    label: 'رقم الصادر',
                    onChanged: (val) {
                      setState(() {
                        outgoingNumber = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'تاريخ الصادر',
                    keyboardType: TextInputType.datetime,
                    onChanged: (val) {
                      setState(() {
                        issuedDate = val;
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
                    label: 'نسبة الإعفاء',
                    onChanged: (val) {
                      setState(() {
                        exemptionRate = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'ملاحظات',
                    maxLines: 5,
                    onChanged: (val) {
                      setState(() {
                        notes = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'جهاز الاشراف',
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    onChanged: (val) {
                      setState(() {
                        supervisionDevice = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'قيمة المقايسه',
                    onChanged: (val) {
                      setState(() {
                        oversightValue = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'قيمة الضريبه',
                    onChanged: (val) {
                      setState(() {
                        taxValue = val;
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
