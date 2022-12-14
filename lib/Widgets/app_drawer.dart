import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:tourist_guide/Screens/category_trips_screen.dart';
import '../Screens/filters_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Drawer(

      child: Column(
        children: [

          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.secondary,

        
            child: Text(
              'دليلك السياحي',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),


          SizedBox(height: 20),

 
          //to build first line of drawer menu
          buildListTile(
              Icons.card_travel,
              'الرحلات',
                  //that's an anonymous function to go to the menu
                  // the use of this function is causing an error. the error shows on tabs_screen -> drawer : AppDrawer()
                  (){
                      Navigator.of(context).pushReplacementNamed('/');
                  }),


          //to build second line of drawer menu
          buildListTile(
              Icons.card_travel,
              'الفلترة',
              //that's an anonymous function to go to filter screen screen
                  (){
                      Navigator.of(context).pushReplacementNamed(FiltersScreen.screenRoute);
              },
            ),
        ],
      ),
    );
  }

  Widget buildListTile(IconData icon, String title, VoidCallback onTapLink) {
    return  ListTile(

      leading: Icon(
          icon,
          size: 30,
          color : Colors.blue),

      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'ElMessiri',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),

      onTap: onTapLink,
    );
  }
}
