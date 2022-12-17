import 'package:flutter/material.dart';
import 'package:tanfezzaty/view/wedgit/text_view.dart';

class ViewImportBuild extends StatelessWidget {
  final String? statement;
  final String? region;
  final String? importNumber;
  final String? theDateOfTheImport;
  final String? theStatus;
  final String? paymentIsMade;
  final String? outgoingNumber;
  final String? outgoingDate;
  const ViewImportBuild({
    super.key,
    required this.statement,
    required this.region,
    required this.importNumber,
    required this.theDateOfTheImport,
    required this.theStatus,
    required this.paymentIsMade,
    required this.outgoingNumber,
    required this.outgoingDate,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('البيان: ${statement.toString()}'),
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
                    text1: 'رقم الوارد : ', text2: importNumber.toString()),
                TextView(
                    text1: 'تاريخ الوارد: ',
                    text2: theDateOfTheImport.toString()),
                TextView(text1: 'الحاله : ', text2: theStatus.toString()),
                TextView(
                    text1: 'تم السداد : ', text2: paymentIsMade.toString()),
                TextView(
                    text1: 'رقم السادر : ', text2: outgoingNumber.toString()),
                TextView(
                    text1: 'تاريخ الصادر : ', text2: outgoingDate.toString()),
              ],
            ),
          )),
        ),
      );
}
