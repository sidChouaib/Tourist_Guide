import 'package:flutter/material.dart';
import './Screens/tabs_screen.dart';
import './Screens/category_trips_screen.dart';
import './Screens/trip_detail_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp( touristGuide());
}

class touristGuide extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //change textapp direction to start from right for the ENTIRE APP, check flutter internationalization
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'AE'),
      ],


      title: 'Tourist guide',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        fontFamily: 'ElMessiri',
        textTheme: ThemeData.light().textTheme.copyWith(

          headline5: TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      initialRoute: '/',
      routes: {
        '/' : (ctx) =>TabsScreen(),
        CategoryTripsScreen.categoryTripsScreenRoute: (ctx) => CategoryTripsScreen(),
        TripDetailScreen.categoryTripsScreenRoute: (ctx) => TripDetailScreen(),
      },
    );
  }
}

