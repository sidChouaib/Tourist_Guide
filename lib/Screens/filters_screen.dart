import 'package:flutter/material.dart';
import '../Widgets/app_drawer.dart';

class FiltersScreen extends StatefulWidget {

  static const screenRoute = '/filters';
  final VoidCallback saveFilters;
  FiltersScreen(this.saveFilters);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {

  var _isInSummer = false;
  var _isInWinter = false;
  var _isForFamily = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الفلترة'),
        actions: [
          IconButton(icon: Icon(Icons.save),
          onPressed: widget.saveFilters,
          ),
        ],
      ),


      drawer: AppDrawer(),


      body: Column(
        children: [
          SizedBox(height: 50,),
          Expanded(
            child: ListView(
              children: [

                buildSwitchListTile(
                  'الرحلات الصيفية فقط',
                  'اظهار الرحلات الصيفية فقط',
                  _isInSummer,
                      ( newValue) {
                       setState(() {
                       _isInSummer = newValue;
                      });
                  },
                ),

                buildSwitchListTile(
                  'الرحلات الشتوية فقط',
                  'اظهار الرحلات الشتوية فقط',
                  _isInWinter,
                      ( newValue) {
                    setState(() {
                      _isInWinter = newValue;
                    });
                  },
                ),

                buildSwitchListTile(
                  'للعائلات',
                  'اظهار الرحلات الصيفيةالمخصصة للعائلات فقط',
                  _isForFamily,
                      ( newValue) {
                    setState(() {
                      _isForFamily = newValue;
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
