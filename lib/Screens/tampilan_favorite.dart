import 'package:flutter/material.dart';

class TampilanFavorite extends StatefulWidget {
  const TampilanFavorite({super.key});

  @override
  State<TampilanFavorite> createState() => _TampilanFavoriteState();
}

class _TampilanFavoriteState extends State<TampilanFavorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
    );
  }
}
