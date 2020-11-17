import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text(
            'Favourites',
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: Text('Azim'),
      ),
    );
  }
}
