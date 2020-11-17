import 'package:flutter/material.dart';
import 'package:shopapp/screen/categories_screen.dart';
import 'package:shopapp/screen/favourite.dart';
import 'package:shopapp/widgets/main_drawer.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {


  final List<Map<String, Object>> _pages = [
    {
      'page': CategoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': Favourite(),
      'title': 'Your Favorite',
    },
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index){
       setState(() {
         _selectedPageIndex = index;
       });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:MainDrawer(),
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'],style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,

      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.yellowAccent,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        onTap: _selectPage,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
              icon: Icon(Icons.category),
            title: Text('Categories')
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.star),
              title: Text('Favs')
          ),
        ],
      ),
    );
  }
}
