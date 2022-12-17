import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';

import 'package:tanfezzaty/view/screen/homebulding/add_home_building.dart';
import 'package:tanfezzaty/view/screen/homebulding/view_home_building.dart';

import '../../../../models/tanfez.dart';

class ListHomeBuilding extends StatefulWidget {
  const ListHomeBuilding({super.key});

  @override
  State<ListHomeBuilding> createState() => _ListHomeBuildingState();
}

class _ListHomeBuildingState extends State<ListHomeBuilding> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('عقارى (منزلى)'),
        ),
        body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable:
                  Hive.box<HomeBuilding>('homebulding').listenable(),
              builder: (context, Box<HomeBuilding> box, _) => ListView.builder(
                    itemCount: box.length,
                    itemBuilder: (context, index) {
                      final homeBuilding = box.getAt(index);
                      return Expanded(
                          child: Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => ViewHomeBuilding(
                                    operationCode: homeBuilding.operationCode,
                                    region: homeBuilding.region,
                                    fiscalYear: homeBuilding.fiscalYear,
                                    comparisonValue:
                                        homeBuilding.comparisonValue,
                                    amountPaid: homeBuilding.amountPaid,
                                    couponDate: homeBuilding.couponDate,
                                    operationName: homeBuilding.operationName,
                                    operationPosition:
                                        homeBuilding.operationPosition,
                                    notes: homeBuilding.notes))));
                          },
                          title: Text(
                              ' كود العمليه : ${homeBuilding!.operationCode.toString()}'),
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
                    builder: ((context) => const AddHomeBuilding())),
              );
            },
            label: const Text(
              '+ | إضافه',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      );
}
