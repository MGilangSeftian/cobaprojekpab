
import 'package:cobaprojekpab/Screens/Tampilan_Login.dart';
import 'package:cobaprojekpab/Screens/tampilan_detailNovel.dart';
import 'package:cobaprojekpab/Screens/tampilan_favorite.dart';
import 'package:cobaprojekpab/Screens/tampilan_home.dart';
import 'package:cobaprojekpab/Screens/tampilan_profile.dart';
import 'package:cobaprojekpab/Screens/tampilan_register.dart';
import 'package:cobaprojekpab/data_list_novel/data_novel.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review dan Recomendation novel',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: TampilanHome(),
      // home: TampilanProfile(),
      // home: TampilanLogin(),
      // home: TampilanRegister(),
      home: TampilanMain(),

    );
  }
}

class TampilanMain extends StatefulWidget {
  const TampilanMain({super.key});

  @override
  State<TampilanMain> createState() => _TampilanMainState();
}

class _TampilanMainState extends State<TampilanMain> {
  int _currentIndex = 0;
  final List<Widget>_children = [
    TampilanHome(),
    TampilanFavorite(),
    TampilanProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.indigo),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
              onTap: (index){
              setState(() {
                _currentIndex = index;
              });
              },
              items: const[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.white,),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite, color: Colors.white,),
                  label: 'Favorite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.white,),
                  label: 'Profile',
                ),
              ],
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.deepPurple[100],
            showUnselectedLabels: true,
          ),
      ),
    );
  }
}
