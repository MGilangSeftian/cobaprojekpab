import 'package:flutter/material.dart';

class TampilanProfile extends StatefulWidget {
  const TampilanProfile({super.key});

  @override
  State<TampilanProfile> createState() => _TampilanProfileState();
}

class _TampilanProfileState extends State<TampilanProfile> {

  void _logout() {
    // Logika untuk membersihkan session/token pengguna
    // Misalnya, jika menggunakan SharedPreferences, kita bisa melakukan sesuatu seperti:
    // SharedPreferences.getInstance().then((prefs) {
    //   prefs.clear(); // Membersihkan data sesi
    // });

    // Setelah itu, navigasi ke halaman login
    //Navigator.pushReplacement(
    //context,
    //MaterialPageRoute(builder: (context) => TampilanLogin()), // Ganti dengan halaman login Anda
    //);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Profil',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(""),
              ),
              const SizedBox(height: 10),
              const Text('Nama Pengguna',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 10),
              const Text('email@example.com',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                color: Colors.black,
                thickness: 1,
              ),
              const SizedBox(height: 20),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Nama Lengkap'),
                  subtitle: Text('Example'),
                ),
              ),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Alamat'),
                  subtitle: Text('Jakarta, Indonesia'),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: const Icon(Icons.history),
                  title: const Text('Histori'),
                  onTap: (){
                    //
                  },
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('Pengaturan Akun'),
                  onTap: (){
                    //
                  },
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: const Icon(Icons.arrow_back),
                  title: const Text('Keluar'),
                  onTap: _logout,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
