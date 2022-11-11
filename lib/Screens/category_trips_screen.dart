import 'package:flutter/material.dart';

class CategoryTripsScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  CategoryTripsScreen(
      this.categoryId,
      this.categoryTitle, );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
        ),
      ),
      body: Text(
        'A list of trips'
      ),
    );
  }
}
