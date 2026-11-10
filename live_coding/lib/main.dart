
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Agit Elhandinnata',
      color: Colors.white,
      darkTheme: ThemeData.dark(),
      home: ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
   ProfilPage({super.key});

  final String nama = 'Agit Elhandinnata';
  final String nim = '1124160178';
  final String prodi = 'Teknik informatika';
  final String status = 'Mahasiswa';
  final String email = 'agit@gmail.com';
  final String noHp = '0812615261';
  final String github = 'AgiteElhan';
  final String kelas = 'Software Engineering 2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Profile Mahasiswa',
          style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            color: Colors.blue,
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person,size: 60,color: Colors.blue,),
                ),
                SizedBox(height: 16,),
                Text(
                  nama,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                Text(
                  '$prodi - $nim',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}