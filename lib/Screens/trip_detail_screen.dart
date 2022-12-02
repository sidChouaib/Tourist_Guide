import 'package:flutter/material.dart';

class TripDetailScreen extends StatelessWidget {
  static const categoryTripsScreenRoute = '/trip_details';

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)?.settings.arguments as String;
return Scaffold(
    appBar: AppBar(
      title: Text('$tripId'),
    ),

    body: Center(
      child: Text ('$tripId Screeeeeeeeen'),
    ),
);



  }
}
