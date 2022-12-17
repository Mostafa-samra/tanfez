// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tanfezzaty/view/wedgit/add_textformfield.dart';

import '../../../../models/tanfez.dart';
import '../../wedgit/custom_list_view.dart';
import '../../wedgit/state_textformbotomlist.dart';

class AddImportBuild extends StatefulWidget {
  const AddImportBuild({super.key});

  @override
  State<AddImportBuild> createState() => _AddImportBuildState();
}

class _AddImportBuildState extends State<AddImportBuild> {
  final _formKey = GlobalKey<FormState>();
  String? statement;
  String? region;
  String? importNumber;
  String? theDateOfTheImport;
  String? theStatus;
  String? paymentIsMade;
  String? outgoingNumber;
  String? outgoingDate;

  submetDate() async {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      Hive.box<ImportBuild>('importbuild').add(ImportBuild(
          statement: statement,
          region: region,
          importNumber: importNumber,
          theDateOfTheImport: theDateOfTheImport,
          theStatus: theStatus,
          paymentIsMade: paymentIsMade,
          outgoingNumber: outgoingNumber,
          outgoingDate: outgoingDate));
    }
    Navigator.of(context).pushAndRemoveUntil<void>(
      MaterialPageRoute<void>(
          builder: (BuildContext context) => const AddImportBuild()),
      ModalRoute.withName('/AddHomeBuilding'),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const CustomListView(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(' وارد عقارى'),
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
                      label: 'البيان',
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        setState(() {
                          statement = val;
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
                  AddTextFormField(
                    label: 'رقم الوارد',
                    onChanged: (val) {
                      setState(() {
                        importNumber = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'تاريخ الوارد',
                    onChanged: (val) {
                      setState(() {
                        theDateOfTheImport = val;
                      });
                    },
                  ),
                  StateDropdownButtonFormField(
                    dropdownValue: theStatus,
                    onChanged: (val) {
                      setState(() {
                        theStatus = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'تم السداد',
                    keyboardType: TextInputType.datetime,
                    onChanged: (val) {
                      setState(() {
                        paymentIsMade = val;
                      });
                    },
                  ),
                  AddTextFormField(
                    label: 'رقم الصادر',
                    keyboardType: TextInputType.multiline,
                    onChanged: (val) {
                      setState(() {
                        outgoingNumber = val;
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
