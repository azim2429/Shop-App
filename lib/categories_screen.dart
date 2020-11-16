import 'package:flutter/material.dart';
import 'package:shopapp/category_item.dart';
import 'model/test_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(centerTitle: true,backgroundColor: Colors.orangeAccent,title: Text('Foodies')),
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((catData) => CategoryItem(
          catData.title,
          catData.color
        )).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
