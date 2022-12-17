import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:tanfezzaty/view/screen/Import_build/view_import_build.dart';

import 'package:tanfezzaty/view/wedgit/custom_list_view.dart';

import '../../../../models/tanfez.dart';
import 'addImportbuild.dart';

class ListImportBuild extends StatefulWidget {
  const ListImportBuild({super.key});

  @override
  State<ListImportBuild> createState() => _ListImportBuildState();
}

class _ListImportBuildState extends State<ListImportBuild> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const CustomListView(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('بحث عقارى'),
        ),
        body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable:
                  Hive.box<ImportBuild>('importbuild').listenable(),
              builder: (context, Box<ImportBuild> box, _) => ListView.builder(
                    itemCount: box.length,
                    itemBuilder: (context, index) {
                      final importBuild = box.getAt(index);
                      return Expanded(
                          child: Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => ViewImportBuild(
                                    statement: importBuild.statement,
                                    region: importBuild.region,
                                    importNumber: importBuild.importNumber,
                                    theDateOfTheImport:
                                        importBuild.theDateOfTheImport,
                                    theStatus: importBuild.theStatus,
                                    paymentIsMade: importBuild.paymentIsMade,
                                    outgoingNumber: importBuild.outgoingNumber,
                                    outgoingDate: importBuild.outgoingDate))));
                          },
                          title: Text(
                              ' كود العمليه : ${importBuild!.statement.toString()}'),
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
                    builder: ((context) => const AddImportBuild())),
              );
            },
            label: const Text(
              '+ | إضافه',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      );
}
