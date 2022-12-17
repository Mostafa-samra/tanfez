import 'package:flutter/material.dart';
import 'package:tanfezzaty/view/wedgit/text_view.dart';

class ViewStreets extends StatelessWidget {
  final String? operationCode;
  final String? region;
  final String? fiscalYear;
  final String? comparisonValue;
  final String? assayNumber;
  final String? theValueOfTheAmountOfSupervisionAndTax; //
  final String? couponDate;
  final String? outgoingNumber;
  final String? issuedDate;
  final String? operationName;
  final String? exemptionRate;
  final String? notes;
  final String? supervisionDevice;
  final String? oversightValue;
  final String? taxValue;
  const ViewStreets(
      {super.key,
      this.operationCode,
      this.region,
      this.fiscalYear,
      this.comparisonValue,
      this.couponDate,
      this.operationName,
      this.notes,
      this.assayNumber,
      this.theValueOfTheAmountOfSupervisionAndTax,
      this.outgoingNumber,
      this.issuedDate,
      this.exemptionRate,
      this.supervisionDevice,
      this.oversightValue,
      this.taxValue});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('كود العمليه: ${operationCode.toString()}'),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                TextView(text1: ' المنطقه : ', text2: region.toString()),
                TextView(
                    text1: ' السنه الماليه : ', text2: fiscalYear.toString()),
                TextView(
                    text1: ' قيمه المقايسه: ',
                    text2: comparisonValue.toString()),
                TextView(
                    text1: ' رقم القسيمه : ', text2: assayNumber.toString()),
                TextView(
                    text1: ' قيمة الاشراف والضريبه:  ',
                    text2: theValueOfTheAmountOfSupervisionAndTax.toString()),
                TextView(
                    text1: ' تاريخ القسيمه : ', text2: couponDate.toString()),
                TextView(
                    text1: ' رقم الصادر:  ', text2: outgoingNumber.toString()),
                TextView(
                    text1: ' تاريخ الصادر:  ', text2: issuedDate.toString()),
                TextView(
                    text1: ' إسم العمليه : ', text2: operationName.toString()),
                TextView(
                    text1: ' نسبه الاعفاء : ', text2: exemptionRate.toString()),
                TextView(text1: ' ملاحظات: ', text2: notes.toString()),
                TextView(
                    text1: ' جهاز الاشراف : ',
                    text2: supervisionDevice.toString()),
                TextView(
                    text1: ' قيمه الاشراف : ',
                    text2: oversightValue.toString()),
                TextView(text1: ' قيمه الضريبه : ', text2: taxValue.toString()),
              ],
            ),
          )),
        ),
      );
}
