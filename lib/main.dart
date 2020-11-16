import 'package:flutter/material.dart';
import 'package:shopapp/categories_screen.dart';

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
        canvasColor: Colors.red[100],
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Colors.black
          ),
          body2: TextStyle(
            color: Colors.white
          ),
          title: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          )
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CategoriesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
