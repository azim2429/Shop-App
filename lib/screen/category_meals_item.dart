import 'package:flutter/material.dart';
import 'package:shopapp/model/test_data.dart';
import 'package:shopapp/widgets/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute
        .of(context)
        .settings
        .arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(centerTitle: true,
            backgroundColor: Colors.red,
            title: Text(categoryTitle, style: TextStyle(color: Colors.white),)),
        body: ListView.builder(itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          );
        }, itemCount: categoryMeals.length,)
    );
  }
}
