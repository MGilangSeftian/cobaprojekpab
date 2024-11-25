import 'package:flutter/material.dart';
import 'package:cobaprojekpab/models_novel/novel_models.dart';
import 'package:cobaprojekpab/data_list_novel/data_novel.dart';
import 'package:url_launcher/url_launcher.dart';

class TampilanDetailnovel extends StatefulWidget {
  final Novel novel;
  const TampilanDetailnovel({super.key, required this.novel});

  @override
  State<TampilanDetailnovel> createState() => _TampilanDetailnovelState();
}

class _TampilanDetailnovelState extends State<TampilanDetailnovel> {
  @override
  Widget build(BuildContext context) {
    final novel = widget.novel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'Detail',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(novel.imageUrl),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    novel.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.favorite_border),
                      ),
                    ],
                  )
                ],
              ),
              Divider(height: 32, color: Colors.grey,),
              ListTile(
                title: Text("Ditulis Oleh"),
                subtitle: Text(novel.author),
              ),
              ListTile(
                title: Text("Tahun Terbit"),
                subtitle: Text(novel.tahun_terbit),
              ),
              ListTile(
                title: Text("Penerbit"),
                subtitle: Text(novel.penerbit),
              ),
              Divider(height: 32, color: Colors.grey,),
              Text(
                "Sinopsis Buku",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8,),
              Text(
                novel.synopsis,
                style: TextStyle(fontSize: 16),
              ),
              Divider(height: 32, color: Colors.grey,),
              Text(
                "Ulasan",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8,),
              Text(
                novel.review,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8,),
              Divider(height: 32, color: Colors.grey,),
              Text(
                'Link Novel',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8,),
              InkWell(
                onTap: () async{
                  final Uri url = Uri.parse(novel.linkNovel);
                  if(await canLaunchUrl(url)){
                    await launchUrl(url);
                  }else{
                    throw 'tidak dapat membuka link : $url';
                  }
                },
                child: Text(
                  novel.linkNovel,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
