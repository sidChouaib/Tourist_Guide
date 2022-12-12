import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  static const screenRoute = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الفلترة'),),
      body: Center(
       child:  Text('filter screen'),
      ),
    );
  }
}
