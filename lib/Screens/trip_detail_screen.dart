import 'package:flutter/material.dart';
import '../app_data.dart';

class TripDetailScreen extends StatelessWidget {
  static const categoryTripsScreenRoute = '/trip_details';

  Widget buildSectionTitle (BuildContext context ,String titleText) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topRight,
      child: Text(
        titleText,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget buildListViewContainer(Widget child) {
   return Container(
        decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(10)
    ),
    height: 200,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.symmetric(horizontal: 15),
     child: child,
   );
  }

  @override
  Widget build(BuildContext context) {
    //getting the ID of the selected item from last screen
    final tripId = ModalRoute.of(context)?.settings.arguments as String;

    //finding the trip coordinates from app data, by comparing the id we got
    // to the IDs of the trips registered in appdata
    final selectedTrip = Trips_data.firstWhere((trip) => trip.id == tripId);

    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('${selectedTrip.title}'),
    ),

    body: SingleChildScrollView(
      child: Column(
          children: [

            // Display the image
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedTrip.imageUrl,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 10),
            buildSectionTitle(context, 'الانشطة'),

            //Display the activities from app data as list
              buildListViewContainer(
               ListView.builder(
                  itemCount : selectedTrip.activities.length,
                  itemBuilder: (ctx, index) => Card(
                    elevation: 0.3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal:10.0 ),
                        child: Text(
                        selectedTrip.activities[index],
                      ),
                    ),
                  ),
              ),
            ),


            SizedBox(height: 10),
            buildSectionTitle(context, 'البرنامج اليومي'),
            buildListViewContainer(
              ListView.builder(
                itemCount : selectedTrip.program.length,
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('${index+1} يوم '),
                      ),
                      title: Text(selectedTrip.program[index]),
                    ),

                    //thin seperation between objects
                    Divider(),
                  ],
                ),
              ),
            ),

            //space between end of box and screen
            SizedBox(height: 50),
          ],
      ),
    ),
);



  }
}
