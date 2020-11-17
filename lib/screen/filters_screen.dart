import 'package:flutter/material.dart';
import 'package:shopapp/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filterScreen';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _lactose = false;
  var _vegan = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Filters',style: TextStyle(color: Colors.white),),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Adjust your meal selection'),
          ),
          Expanded(child: ListView(
            children: [
              SwitchListTile(
                title: Text('Gluten-free'),
                  subtitle: Text('Only include gluten-free meals'),
                  value: _glutenFree,
                  onChanged: (newValue){
                    setState(() {
                      _glutenFree = newValue;
                    });
                  }
              ),
              SwitchListTile(
                  title: Text('Lactose-free'),
                  subtitle: Text('Only include lactose-free meals'),
                  value: _lactose,
                  onChanged: (newValue){
                    setState(() {
                      _lactose = newValue;
                    });
                  }
              ),
              SwitchListTile(
                  title: Text('Vegan'),
                  subtitle: Text('Only include Vegan-free meals'),
                  value: _vegan,
                  onChanged: (newValue){
                    setState(() {
                      _vegan = newValue;
                    });
                  }
              ),
              SwitchListTile(
                  title: Text('Vegetarian'),
                  subtitle: Text('Only include Vegetarian meals'),
                  value: _vegetarian,
                  onChanged: (newValue){
                    setState(() {
                      _vegetarian = newValue;
                    });
                  }
              ),
            ],
          ))
        ],
      )
    );
  }
}
