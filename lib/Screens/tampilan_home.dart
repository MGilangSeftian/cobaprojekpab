import 'package:cobaprojekpab/widget/itemcard.dart';
import 'package:flutter/material.dart';
import 'package:cobaprojekpab/data_list_novel/data_novel.dart';
import 'package:cobaprojekpab/models_novel/novel_models.dart';

class TampilanHome extends StatefulWidget {
  const TampilanHome({super.key});

  @override
  State<TampilanHome> createState() => _TampilanHomeState();
}

class _TampilanHomeState extends State<TampilanHome> {
  String pilihKatergori = 'Semua';
  TextEditingController pencarianController = TextEditingController();
  String pencarian = "";
  List<Novel>get filterKategori {
    List<Novel> daftarlist = novels;
    if(pilihKatergori != 'Semua'){
      daftarlist = daftarlist.where((
          novel) => novel.kategori == pilihKatergori)
          .toList();
    }
    if (pencarian.isNotEmpty){
      daftarlist = daftarlist.where((
          novel)=>novel.title.toLowerCase()
          .startsWith(
          pencarian.toLowerCase()) ||
          novel.author.toLowerCase()
          .startsWith(pencarian.toLowerCase())
      ).toList();
    }
    return daftarlist;
  }

  @override
  void initState() {
    super.initState();
    pencarianController.addListener((){
      setState(() {
        pencarian = pencarianController.text;
      });
    });
  }

  @override
  void dispose() {
    pencarianController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
          'Home',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(9),
            child: TextField(
              controller: pencarianController,
              decoration: InputDecoration(
                hintText: 'Pencarian',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10),
            child: Container(
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    image: AssetImage('assets/images/TampilanHome.jpg'),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Rekomendasi Novel',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.filter_list),
                    onPressed: (){
                    showModalBottomSheet(
                      backgroundColor: Colors.blueGrey,
                        context: context,
                        builder: (BuildContext context) {
                          return ListView(
                            children: Kategori.map((kategori) {
                              return ListTile(
                                title: Text(kategori,
                                  style: TextStyle(
                                      color: Colors.white),
                                ),
                                onTap: (){
                                  setState(() {
                                    pilihKatergori = kategori;
                                  });
                                  Navigator.pop(context);
                                },
                              );
                            }).toList(),
                          );
                        });
                    },
                ),
              ],
            ),
          ),
          Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.60
                  ),
                  itemCount: filterKategori.length,
                  itemBuilder: (context, index) {
                    final novel = filterKategori[index];
                    return GestureDetector(
                      onTap: (){},
                      child: Itemcart(novel: novel),
                    );
                  },
              ),
          ),
        ],
      ),
    );
  }
}
