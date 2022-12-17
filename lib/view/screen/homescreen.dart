import 'package:flutter/material.dart';
import 'package:tanfezzaty/view/screen/governmental/add_governmental.dart';

import 'package:tanfezzaty/view/screen/homebulding/add_home_building.dart';

import 'package:tanfezzaty/view/screen/streets/add_streets.dart';
import 'package:tanfezzaty/view/wedgit/custom_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              bottom: TabBar(tabs: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text('عقارى منزلى'), Icon(Icons.home)],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text('شوارع'), Icon(Icons.add_road)],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text('حكومى'), Icon(Icons.account_balance)],
                ),
              ]),
              title: const Text('تنفيذ ذاتى '),
            ),
            drawer: const CustomListView(),
            body: const TabBarView(
              children: [
                Card(child: AddHomeBuilding()),
                Card(child: AddStreets()),
                Card(child: AddGovernmental()),
              ],
            ),
          ),
        ),
      );
}
