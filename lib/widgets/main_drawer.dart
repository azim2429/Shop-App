import 'package:flutter/material.dart';
import 'package:shopapp/screen/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.redAccent,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacementNamed('/');
            },
            leading: Icon(Icons.restaurant, size: 26),
            title: Text(
              'Meals',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
            },
            leading: Icon(Icons.settings, size: 26),
            title: Text(
              'Filter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
