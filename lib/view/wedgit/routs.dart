import 'package:flutter/material.dart';
import 'package:tanfezzaty/view/screen/Import_build/addImportbuild.dart';
import 'package:tanfezzaty/view/screen/governmental/add_governmental.dart';
import 'package:tanfezzaty/view/screen/governmental/list_governmental.dart';
import 'package:tanfezzaty/view/screen/governmental/view_governmental.dart';
import 'package:tanfezzaty/view/screen/homebulding/add_home_building.dart';
import 'package:tanfezzaty/view/screen/homebulding/list_home_building.dart';
import 'package:tanfezzaty/view/screen/homebulding/view_home_building.dart';
import 'package:tanfezzaty/view/screen/streets/add_streets.dart';
import 'package:tanfezzaty/view/screen/streets/list_streets.dart';
import 'package:tanfezzaty/view/screen/streets/view_streets.dart';

import '../screen/homescreen.dart';

Map<String, WidgetBuilder> routs = {
  '/': (context) => const HomeScreen(),

  // '/': (context) => const TestT(),

  // home bulding
  '/AddHomeBuilding': (context) =>
      const AddHomeBuilding(), //صفحة الإدخال الرئيسيه
  '/ListHomeBuilding': (context) =>
      const ListHomeBuilding(), // صفحة إظهار خلايا الحفظ
  '/ViewHomeBuilding': (context) =>
      const ViewHomeBuilding(), //صفحة معلومات الخلايا

// governmental
  '/AddGovernmental': (context) => const AddGovernmental(),
  '/ListGovernmental': (context) => const ListGovernmental(),
  '/ViewGovernmental': (context) => const ViewGovernmental(),

//streets
  '/AddStreets': (context) => const AddStreets(),
  '/ListStreet': (context) => const ListStreet(),
  '/ViewStreets': (context) => const ViewStreets(),

  //import build
  '/AddImportBuild': (context) => const AddImportBuild(),
};
