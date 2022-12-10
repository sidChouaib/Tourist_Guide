import 'package:flutter/material.dart';
import '../Screens/categories_screens.dart';
import 'favorites_screen.dart';

class TabsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('دليل سياحي'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.dashboard),
                text: 'التصنيفات',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'المفضلة',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavoriteScreen(),
          ],
        ),
      ),
    );
  }
}
