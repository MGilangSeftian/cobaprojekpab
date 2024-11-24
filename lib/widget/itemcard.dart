import 'package:cobaprojekpab/models_novel/novel_models.dart';
import 'package:flutter/material.dart';

class Itemcart extends StatefulWidget {
  final Novel novel;
  const Itemcart({super.key, required this.novel});

  @override
  State<Itemcart> createState() => _ItemcartState();
}

class _ItemcartState extends State<Itemcart> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(5),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(widget.novel.imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 16, top: 8),
            child: Text(
              widget.novel.title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 16, bottom: 8),
            child: Text(
              widget.novel.author,
              style: TextStyle(fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}
