import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:tanfezzaty/view/screen/streets/add_streets.dart';
import 'package:tanfezzaty/view/screen/streets/view_streets.dart';

import '../../../../models/tanfez.dart';

class ListStreet extends StatefulWidget {
  const ListStreet({super.key});

  @override
  State<ListStreet> createState() => _ListStreetState();
}

class _ListStreetState extends State<ListStreet> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('شوارع'),
        ),
        body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: Hive.box<Streets>('streets').listenable(),
              builder: (context, Box<Streets> box, _) => ListView.builder(
                    itemCount: box.length,
                    itemBuilder: (context, index) {
                      final streets = box.getAt(index);
                      return Expanded(
                          child: Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => ViewStreets(
                                    operationCode: streets.operationCode,
                                    region: streets.region,
                                    fiscalYear: streets.fiscalYear,
                                    comparisonValue: streets.comparisonValue,
                                    couponDate: streets.couponDate,
                                    operationName: streets.operationName,
                                    notes: streets.notes,
                                    assayNumber: streets.assayNumber,
                                    theValueOfTheAmountOfSupervisionAndTax: streets
                                        .theValueOfTheAmountOfSupervisionAndTax,
                                    outgoingNumber: streets.outgoingNumber,
                                    issuedDate: streets.issuedDate,
                                    exemptionRate: streets.exemptionRate,
                                    supervisionDevice:
                                        streets.supervisionDevice,
                                    oversightValue: streets.oversightValue,
                                    taxValue: streets.taxValue))));
                          },
                          title: Text(
                              ' كود العمليه : ${streets!.operationCode.toString()}'),
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
                MaterialPageRoute(builder: ((context) => const AddStreets())),
              );
            },
            label: const Text(
              '+ | إضافه',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      );
}
