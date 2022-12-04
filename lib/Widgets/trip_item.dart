import 'package:flutter/material.dart';
import '../Models/trip.dart';
import '../Screens/trip_detail_screen.dart';

class TripItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;

  TripItem({
     required this.id,
     required this.title,
     required this.imageUrl,
     required this.tripType,
     required this.duration,
     required this.season});

  String get seasonText {
    switch (season) {
      case Season.Winter:
        return 'شتاء';
        break;
      case Season.Spring:
        return 'رييع';
        break;
      case Season.Summer:
        return 'صيف';
        break;
      case Season.Autumn:
        return 'خريف';
        break;
      default:
        return 'unkown season';
    }
  }

    String get tripTypeText{
      switch (tripType) {
        case TripType.Exploration:
          return 'Exploration';
          break;
        case TripType.Recovery:
          return 'Recovery';
          break;
        case TripType.Activities:
          return 'Activity';
          break;
        case TripType.Therapy:
          return 'Therapy';
          break;
        default:
          return 'unknown season';
      }
    }


  void selectTrip(BuildContext context) {
    Navigator.of(context).pushNamed(TripDetailScreen.categoryTripsScreenRoute,
    arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),

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

                Container(
                  height: 250,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),

                  //We do this to put blackish background shade, so the title would be more readable
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8)
                      ],
                      stops: [
                        0.6,
                        1,
                      ]
                    ),
                  ),

                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Row(
                    children: [
                      Icon(Icons.today,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration ايام '),
                    ],
                  ),

                  Row(
                    children: [
                      Icon(Icons.sunny,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(seasonText),
                    ],
                  ),

                  Row(
                    children: [
                      Icon(Icons.family_restroom,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(tripTypeText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
