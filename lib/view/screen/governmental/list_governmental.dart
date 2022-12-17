import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';

import 'package:tanfezzaty/view/screen/governmental/add_governmental.dart';
import 'package:tanfezzaty/view/screen/governmental/view_governmental.dart';

import '../../../../models/tanfez.dart';

class ListGovernmental extends StatefulWidget {
  const ListGovernmental({super.key});

  @override
  State<ListGovernmental> createState() => _ListGovernmentalState();
}

class _ListGovernmentalState extends State<ListGovernmental> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('حكومى'),
        ),
        body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable:
                  Hive.box<Governmental>('governmental').listenable(),
              builder: (context, Box<Governmental> box, _) => ListView.builder(
                    itemCount: box.length,
                    itemBuilder: (context, index) {
                      final governmental = box.getAt(index);
                      return Expanded(
                          child: Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => ViewGovernmental(
                                    operationCode: governmental.operationCode,
                                    region: governmental.region,
                                    fiscalYear: governmental.fiscalYear,
                                    thePartyFromWhichTheCheckSasIssued:
                                        governmental
                                            .thePartyFromWhichTheCheckSasIssued,
                                    voucherNumber: governmental.voucherNumber,
                                    theValueOfTheCheckCouponOrderPayment:
                                        governmental
                                            .theValueOfTheCheckCouponOrderPayment,
                                    theDateOfTheCheck: governmental
                                        .theDateOfTheCheck
                                        .toString(),
                                    outgoingNumber: governmental.outgoingNumber,
                                    issuedDate:
                                        governmental.issuedDate.toString(),
                                    operationName: governmental.operationName,
                                    notes: governmental.notes))));
                          },
                          title: Text(
                              ' كود العمليه : ${governmental!.operationCode.toString()}'),
                          trailing: IconButton(
                              onPressed: () {
                                box.deleteAt(index);
                              },
                              icon: const Icon(Icons.delete)),
                        ),
                      ));
                    },
                  )),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: ((context) => const AddGovernmental())),
              );
            },
            label: const Text(
              '+ | إضافه',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      );
}
