import 'package:flutter/material.dart';
import 'package:tanfezzaty/view/wedgit/text_view.dart';

class ViewGovernmental extends StatelessWidget {
  final String? operationCode; // كود العمليه
  final String? region; // المنطقه
  final String? fiscalYear; // السنه الماليه
  final String? thePartyFromWhichTheCheckSasIssued; // الجهة الوارد منها الشيك
  final String? voucherNumber; // رقم القسيمه
  final String?
      theValueOfTheCheckCouponOrderPayment; // قيمة الشيك القسيمه امر الدفع
  final String? theDateOfTheCheck; // تاريخ الشيك
  final String? outgoingNumber; // رقم الصادر
  final String? issuedDate; // تاريخ الصادر
  final String? operationName; // اسم العمليه
  final String? notes; // ملاحظات
  const ViewGovernmental({
    super.key,
    this.operationCode,
    this.region,
    this.fiscalYear,
    this.thePartyFromWhichTheCheckSasIssued,
    this.voucherNumber,
    this.theValueOfTheCheckCouponOrderPayment,
    this.theDateOfTheCheck,
    this.outgoingNumber,
    this.issuedDate,
    this.operationName,
    this.notes,
  });

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
                TextView(
                  text1: ' المنطقه : ',
                  text2: region.toString(),
                ),
                TextView(
                    text1: ' السنه الماليه : ', text2: fiscalYear.toString()),
                TextView(
                    text1: ' الجهة الوارد منها الشيك : ',
                    text2: thePartyFromWhichTheCheckSasIssued.toString()),
                TextView(
                    text1: ' رقم القسيمه : ', text2: voucherNumber.toString()),
                TextView(
                    text1: ' قيمة الشيك القسيمه امر الدفع : ',
                    text2: theValueOfTheCheckCouponOrderPayment.toString()),
                TextView(
                    text1: ' تاريخ الشيك : ',
                    text2: theDateOfTheCheck.toString()),
                TextView(
                    text1: ' رقم الصادر: ', text2: outgoingNumber.toString()),
                TextView(
                    text1: ' تاريخ الصادر : ', text2: issuedDate.toString()),
                TextView(
                    text1: ' اسم العمليه : ', text2: operationName.toString()),
                TextView(text1: ' ملاحظات : ', text2: notes.toString()),
              ],
            ),
          )),
        ),
      );
}
