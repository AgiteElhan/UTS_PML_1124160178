
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
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kontak',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Divider(),
                InfoRow(ikon: Icons.email, label: 'Email', value: email),
                InfoRow(ikon: Icons.phone, label: 'Nomor Handphone', value: noHp),
                InfoRow(ikon: Icons.school, label: 'Kelas', value: kelas),
                InfoRow(ikon: Icons.link, label: 'GitHub', value: github),
                Text(
                  'Hobi',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Divider(),
                InfoRow(ikon: Icons.run_circle, label: 'Hobi', value: 'Lari pagi'),
                InfoRow(ikon: Icons.gamepad, label: 'Hobi', value: 'Bermain Game'),
                InfoRow(ikon: Icons.sports_volleyball, label: 'Hobi', value: 'Bermain Volly'),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.ikon,
    required this.label,
    required this.value,
    });

    final IconData ikon;
    final String label;
    final String value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(ikon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}