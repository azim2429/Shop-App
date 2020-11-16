import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoryItem(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Center(child: Text(title,style:Theme.of(context).textTheme.title,)),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.5), color.withOpacity(1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
