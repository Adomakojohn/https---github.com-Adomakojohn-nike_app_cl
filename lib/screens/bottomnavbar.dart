import 'package:flutter/material.dart';
import 'package:nikeappclone/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List _pages=[
   const  HomePage(),
    Container(),
    Container()
  ];
  int _selectedIndex =0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(selectedFontSize: 20,
        unselectedItemColor: Colors.grey.shade400,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        selectedItemColor: Colors.black,
        items: [
        BottomNavigationBarItem(
            icon: Image.asset("Assets/icons/home.png" , ), label: "Home"),
        BottomNavigationBarItem(
            icon: Image.asset("Assets/icons/bell.png" ,color: Colors.black, ), label: "Notifications"),
        BottomNavigationBarItem(
            icon: Image.asset("Assets/icons/usericon.png", color: Colors.black,), label: "Profile"),
      ]),
    );
  }
}
