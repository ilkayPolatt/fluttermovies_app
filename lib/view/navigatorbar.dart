import 'package:flutter/material.dart';
import 'package:flutter_application_5/const/movie_const.dart';

class navigatorBarLearnView extends StatefulWidget {
  const navigatorBarLearnView({super.key});

  @override
  State<navigatorBarLearnView> createState() => _navigatorBarLearnViewState();
}

class _navigatorBarLearnViewState extends State<navigatorBarLearnView> {
  int _selectedIndex = 0;

  List<Widget> _bottomList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 ? AppBar() : null,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        selectedItemColor: MovieConst.colororange,
        unselectedItemColor: MovieConst.colorgrey,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.security), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: ''),
        ],
      ),
      body: _bottomList.elementAt(_selectedIndex),
    );
  }
}
