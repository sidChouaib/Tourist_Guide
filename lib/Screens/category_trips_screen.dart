import 'package:flutter/material.dart';

class CategoryTripsScreen extends StatelessWidget {
    static const categoryTripsScreenRoute = 'category_trips';

  @override
  Widget build(BuildContext context) {

    final routeArgument = ModalRoute
        .of(context)
        ?.settings
        .arguments as Map<String, String>;

    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];

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
            return;
          },
          itemCount: ,
        ),
      ),
    );
  }
}
