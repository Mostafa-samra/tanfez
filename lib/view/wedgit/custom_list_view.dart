import 'package:flutter/material.dart';
import 'package:tanfezzaty/view/screen/Import_build/addImportbuild.dart';
import 'package:tanfezzaty/view/screen/homescreen.dart';
import 'package:tanfezzaty/view/screen/search_homescreen.dart';
import '../screen/Import_build/listimportbuild.dart';
import 'custom_list_tile.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const UserAccountsDrawerHeader(
          accountName: Text("Mostafa"),
          accountEmail: Text("mostafa@mail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("assets/images/photo.jpeg"),
          ),
          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            image: DecorationImage(
                image: AssetImage("assets/images/stock.jpg"),
                fit: BoxFit.cover),
          ),
        ),
        CustomListTile(
          tileL: "إضافة عمليه جديده",
          icon: (Icons.add_circle_outline),
          onTap: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const HomeScreen()),
            );
          },
        ),
        CustomListTile(
          tileL: "بحث",
          icon: (Icons.search),
          onTap: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const SearchHomeScreen()),
            );
          },
        ),
        CustomListTile(
          tileL: "إضافة وارد عقار",
          icon: (Icons.add_circle_outline),
          onTap: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const AddImportBuild()),
            );
          },
        ),
        CustomListTile(
          tileL: "بحث وارد عقارى",
          icon: (Icons.search),
          onTap: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ListImportBuild()),
            );
          },
        ),
      ],
    ));
  }
}
