import 'package:flutter/material.dart';
import 'package:tourist_guide/categories_data.dart';
import 'package:tourist_guide/Widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourist\'s Guide'),
      ),
      body: GridView(
        padding:EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),

        children: Categories_data.map((categoryData)
        => CategoryItem(
            id: categoryData.id,
            title: categoryData.title,
            imageURL: categoryData.imageUrl),
        ).toList(),
      ),
    );
  }
}
