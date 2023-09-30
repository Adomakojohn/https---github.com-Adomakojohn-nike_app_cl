import 'package:flutter/material.dart';
import 'package:nikeappclone/screens/bottomnavbar.dart';
import 'package:nikeappclone/screens/details_screen.dart';

import 'screens/home_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        '/bottomnavbar':(context) => const BottomNavBar(),
        'detailspage':(context) => const DetailsPage(),
        'homepage':(context) => const HomePage()
      },
      home:const BottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}