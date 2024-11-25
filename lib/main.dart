
import 'package:cobaprojekpab/Screens/tampilan_detailNovel.dart';
import 'package:cobaprojekpab/Screens/tampilan_home.dart';
import 'package:cobaprojekpab/Screens/tampilan_profile.dart';
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
      home: TampilanHome(),
      // home: TampilanProfile(),
    );
  }
}