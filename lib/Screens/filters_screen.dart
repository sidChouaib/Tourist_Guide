import 'package:flutter/material.dart';
import '../Widgets/app_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  static const screenRoute = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {

  var _isInSummer = false;
  var isInWinter = false;
  var _isForFamily = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الفلترة'),),


      drawer: AppDrawer(),


      body: Column(
        children: [

          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile('subject', 'description', _isInSummer,
                      ( newValue) {
                       setState(() {
                       _isInSummer = newValue;
                      });
                  },
                ),
              ],
            ),
          ),

          FloatingActionButton(onPressed: () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
        ],
      ),
    );
  }


    Widget buildSwitchListTile(String title, String subtitle, var currenVar, Function(bool) updateValue) {
      return SwitchListTile(

      title: Text(title),
      subtitle: Text(subtitle),
      value: currenVar,
      onChanged: updateValue,
      );

  }

}
