import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/Project/budget/shop_app/lib/screen/category_meals_item.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.title, this.color, this.id);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/category_meal_item', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        )),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.6), color.withOpacity(1)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
