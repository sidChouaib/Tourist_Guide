import 'package:flutter/material.dart';
import 'package:tourist_guide/Models/trip.dart';

class TripItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;

  TripItem({
     required this.title,
     required this.imageUrl,
     required this.tripType,
     required this.duration,
     required this.season});

  void selectTrip() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectTrip,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
