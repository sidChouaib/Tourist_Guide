import 'package:flutter/material.dart';
import '../Screens/category_trips_screen.dart';
import '../Screens/trip_detail_screen.dart';
import '../Screens/categories_screens.dart';

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
     // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/' : (ctx) =>CategoriesScreen(),
        CategoryTripsScreen.categoryTripsScreenRoute: (ctx) => CategoryTripsScreen(),
        TripDetailScreen.categoryTripsScreenRoute: (ctx) => TripDetailScreen(),
      },
    );
  }
}

