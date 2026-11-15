import 'package:flutter/material.dart';
import 'package:profil_app/widget/card.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tentang Saya',
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          const Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person,
                    size: 65,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 12,),
                Text(
                  'Agit Elhandinnata',
                   style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Mahasiswa Teknik Informatika',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 24,),
          const Text(
            'Keahlian',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),
          ),
          const Card(
            child: Column(
              children: [
                InfoRow(
                  ikon: Icons.code, 
                  label: 'Programming', 
                  value: 'PHP, JavaScript, Python, HTML, CSS'
                ),
                Divider(height: 1,),
                InfoRow(
                  ikon: Icons.web, 
                  label: 'Web Development', 
                  value: 'Laravel, React JS, Next JS'
                ),
                Divider(height: 1,),
                
                InfoRow(
                  ikon: Icons.design_services, 
                  label: 'UI/UX Design', 
                  value: 'Membuat Design Antarmuka aplikasi'
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}