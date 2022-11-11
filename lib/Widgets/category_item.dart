import 'package:flutter/material.dart';
import 'package:tourist_guide/Screens/category_trips_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageURL;

   CategoryItem({required this.title, required this.imageURL, required this.id});

   void selectCategory (BuildContext ctx) {
     Navigator.of(ctx).push(
       MaterialPageRoute(
         builder: (c) => CategoryTripsScreen(id, title),
     ),
     );
   }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),

      child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            imageURL,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),

      Container(

        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),

        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
        ),
      ),


      ],

      ),
    );
  }
}
