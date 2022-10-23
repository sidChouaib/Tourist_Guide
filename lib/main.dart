import 'package:flutter/material.dart';
import 'package:tourist_guide/Screens/Categories_screens.dart';

void main() {
  runApp( touristGuide());
}

class touristGuide extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourist guide',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: CategoriesScreen(),
    );
  }
}

