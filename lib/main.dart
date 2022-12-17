import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tanfezzaty/models/tanfez.dart';
import 'package:tanfezzaty/view/wedgit/routs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter<HomeBuilding>(HomeBuildingAdapter());
  await Hive.openBox<HomeBuilding>('homebulding');
  Hive.registerAdapter<Streets>(StreetsAdapter());
  await Hive.openBox<Streets>('streets');
  Hive.registerAdapter<Governmental>(GovernmentalAdapter());
  await Hive.openBox<Governmental>('governmental');
  Hive.registerAdapter<ImportBuild>(ImportBuildAdapter());
  await Hive.openBox<ImportBuild>('importbuild');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'تنفيذ ذاتى',
        theme: ThemeData(primarySwatch: Colors.green),
        initialRoute: '/',
        routes: routs,
        // home: const Directionality(
        //   textDirection: TextDirection.rtl,
        //   child: SearchHomeScreen(),
        // ),
      );
}
