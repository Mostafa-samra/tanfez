import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tanfezzaty/view/screen/homescreen.dart';
import 'package:tanfezzaty/view/wedgit/add_textformfield.dart';
import 'package:tanfezzaty/view/wedgit/year_textformbotomlist.dart';

import '../../../../models/tanfez.dart';

class AddGovernmental extends StatefulWidget {
  const AddGovernmental({super.key});

  @override
  State<AddGovernmental> createState() => _AddGovernmentalState();
}

class _AddGovernmentalState extends State<AddGovernmental> {
  final _formKey = GlobalKey<FormState>();
  String? operationCode; // كود العمليه
  String? region; // المنطقه
  String? fiscalYear; // السنه الماليه
  String? thePartyFromWhichTheCheckSasIssued; // الجهة الوارد منها الشيك
  String? voucherNumber; // رقم القسيمه
  String? theValueOfTheCheckCouponOrderPayment; // قيمة الشيك القسيمه امر الدفع
  DateTime? theDateOfTheCheck; // تاريخ الشيك
  String? outgoingNumber; // رقم الصادر
  DateTime? issuedDate; // تاريخ الصادر
  String? operationName; // اسم العمليه
  String? notes; // ملاحظات
  DateTime date = DateTime.now();

  submetDate() async {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      Hive.box<Governmental>('governmental').add(Governmental(
          operationCode: operationCode,
          region: region,
          fiscalYear: fiscalYear,
          thePartyFromWhichTheCheckSasIssued:
              thePartyFromWhichTheCheckSasIssued,
          voucherNumber: voucherNumber,
          theValueOfTheCheckCouponOrderPayment:
              theValueOfTheCheckCouponOrderPayment,
          theDateOfTheCheck: theDateOfTheCheck,
          outgoingNumber: outgoingNumber,
          issuedDate: issuedDate,
          operationName: operationName,
          notes: notes));
    }
    Navigator.of(context).pushAndRemoveUntil<void>(
      MaterialPageRoute<void>(
          builder: (BuildContext context) => const HomeScreen()),
      ModalRoute.withName('/'),
    );
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
                    label: 'الجهة الوارد منها الشيك',
                    onChanged: (val) {
                      setState(() {
                        thePartyFromWhichTheCheckSasIssued = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'رقم القسيمه',
                    onChanged: (val) {
                      setState(() {
                        voucherNumber = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'قيمة الشيك القسيمه امر الدفع',
                    onChanged: (val) {
                      setState(() {
                        theValueOfTheCheckCouponOrderPayment = val;
                      });
                    },
                  ),
                  const Text('تاريخ الشيك'),
                  ElevatedButton(
                    child: Text(
                      '${theDateOfTheCheck?.day}/${theDateOfTheCheck?.month}/${theDateOfTheCheck?.year}',
                      style: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: theDateOfTheCheck!,
                          firstDate: DateTime(1995),
                          lastDate: DateTime(2100));
                      if (newDate == null) return;

                      setState(() {
                        theDateOfTheCheck = newDate;
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
                  const Text('تاريخ الصادر'),
                  ElevatedButton(
                    child: Text(
                      '${issuedDate?.day}/${issuedDate?.month}/${issuedDate?.year}',
                      style: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: issuedDate!,
                          firstDate: DateTime(1995),
                          lastDate: DateTime(2100));
                      if (newDate == null) return;

                      setState(() {
                        issuedDate = newDate;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'اسم العمليه',
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    onChanged: (val) {
                      setState(() {
                        operationName = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'ملاحظات',
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
