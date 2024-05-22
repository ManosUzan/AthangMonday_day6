import 'package:flutter/material.dart';
import 'package:monday_day6/model/movie_model.dart';
import 'package:monday_day6/screens/Moive/categoriesmovie.dart';
import 'package:monday_day6/screens/Moive/homemovie.dart';
import 'package:monday_day6/screens/Moive/trendingmovie.dart';
import 'package:monday_day6/uitls/movie_constant.dart';



class homelayout extends StatefulWidget {
 

  @override
  State<homelayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<homelayout> {
  int _selectedIndex = 0;
 List<String> titles = ['Home', 'Trending', 'Categories'];
  List<Widget> screens = [
    homemovie(),
    trendingmovie(),
    categoriesmovie()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
 Text(titles[_selectedIndex]),
            Icon(Icons.face),
                ],
        ),
      ),
     
      body: SingleChildScrollView(
        child: screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (val){
           setState(() {
             _selectedIndex = val;
           });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Trending'),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: 'Categories'),
        ],
      ),
    );
  }
}