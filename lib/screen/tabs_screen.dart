import 'package:flutter/material.dart';
import 'package:shopapp/screen/categories_screen.dart';
import 'package:shopapp/screen/favourite.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {


  final List<Widget> _pages = [
    CategoriesScreen(),
    Favourite(),
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
      body: _pages[_selectedPageIndex],
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
