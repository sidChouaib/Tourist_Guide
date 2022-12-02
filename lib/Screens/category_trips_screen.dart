import 'package:flutter/material.dart';
import '../Widgets/trip_item.dart';
import '../categories_data.dart';

class CategoryTripsScreen extends StatelessWidget {
  static const categoryTripsScreenRoute = '/category_trips';

  @override
  Widget build(BuildContext context) {
    final routeArgument = ModalRoute
        .of(context)
        ?.settings
        .arguments as Map<String, String>;

    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    final filteredTrips = Trips_data.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle!,
        ),
      ),

      body:
      Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return TripItem(
                id: filteredTrips[index].id,
                title: filteredTrips[index].title,
                imageUrl: filteredTrips[index].imageUrl,
                tripType: filteredTrips[index].tripType,
                duration: filteredTrips[index].duration,
                season: filteredTrips[index].season);
          },
          itemCount: filteredTrips.length,
        ),
      ),
    );
  }
}
