import 'package:flutter/material.dart';
import 'package:tanfezzaty/view/wedgit/text_view.dart';

class ViewHomeBuilding extends StatelessWidget {
  final String? operationCode;
  final String? region;
  final String? fiscalYear;
  final String? comparisonValue;
  final String? amountPaid;
  final String? couponDate;
  final String? operationName;
  final String? operationPosition;
  final String? notes;
  const ViewHomeBuilding(
      {super.key,
      this.operationCode,
      this.region,
      this.fiscalYear,
      this.comparisonValue,
      this.amountPaid,
      this.couponDate,
      this.operationName,
      this.operationPosition,
      this.notes});

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
                    text1: 'السنه الماليه : ', text2: fiscalYear.toString()),
                TextView(
                    text1: 'قيمة المقايسه : ',
                    text2: comparisonValue.toString()),
                TextView(
                    text1: 'المبلغ المسدد : ', text2: amountPaid.toString()),
                TextView(
                    text1: 'تاريخ القسيمه : ', text2: couponDate.toString()),
                TextView(
                    text1: 'إسم العمليه : ', text2: operationName.toString()),
                TextView(
                    text1: 'موقف العمليه : ',
                    text2: operationPosition.toString()),
                TextView(text1: 'ملاحظات : ', text2: notes.toString())
              ],
            ),
          )),
        ),
      );
}
