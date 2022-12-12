import 'package:flutter/material.dart';
import '../Widgets/app_drawer.dart';
import './categories_screens.dart';
import './favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;
  final List<Map<String, Widget>> _screens = [
    {
      'Screen': CategoriesScreen(),
      'Title' : Text('تصنيفات الرحلات'),
    },
    {
      'Screen': FavoriteScreen(),
      'Title' : Text('الرحلات المفضلة'),
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _screens[_selectedScreenIndex]['Title'],
      ),

      drawer: AppDrawer(),


      body: _screens[_selectedScreenIndex]['Screen'],


      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'التصنيفات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'المفضلة',
          ),
        ],
      ),
    );
  }
}
