import 'package:flutter/material.dart';
import 'package:shopapp/model/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({this.title,this.imageUrl,this.duration,this.complexity,this.affordability});

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                  child: Image.network(imageUrl,height: 250,width: double.infinity,fit: BoxFit.cover),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
