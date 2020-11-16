import 'package:flutter/material.dart';
import 'file:///D:/Project/budget/shop_app/lib/screen/categories_screen.dart';
import 'file:///D:/Project/budget/shop_app/lib/screen/category_meals_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodies',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.yellowAccent,
        canvasColor: Colors.grey[100],
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(color: Colors.black),
            body2: TextStyle(color: Colors.white),
            title: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            )),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: CategoriesScreen(),
      routes: {
        '/':(ctx) => CategoriesScreen(),
        '/category_meal_item': (ctx) => CategoryMealScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
