import 'package:flutter/material.dart';
import 'package:shopapp/model/test_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      child: Text('Ingredients',
          style: TextStyle(
              color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

  Widget buildContaianer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.red,
            title: Text(
              selectedMeal.title,
              style: TextStyle(color: Colors.white),
            )),
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            buildSectionTitle(context, 'Ingredients'),
            buildContaianer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      selectedMeal.ingredients[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            buildSectionTitle(context, 'Steps'),
            buildContaianer(
              ListView.builder(
                itemCount: selectedMeal.steps.length,
                  itemBuilder: (ctx , index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Text('# ${(index+1)}',style: TextStyle(color: Colors.white),),
                        ),
                        title: Text(
                          selectedMeal.steps[index],
                        ),
                      ),
                      Divider(thickness: 1,color: Colors.red),
                    ],
                  )
              )
            )
          ],
        ));
  }
}
