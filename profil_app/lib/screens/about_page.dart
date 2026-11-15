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
                  backgroundColor: Colors.white,
                  backgroundImage:  AssetImage(
                    'assets/images/profil.jpeg'
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
            'Deskripsi Singkat',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Saya adalah mahasiswa Teknik Informatika yang memiliki '
                'ketertarikan di bidang teknologi dan pengembangan aplikasi. '
                'Saya senang mempelajari hal-hal baru, khususnya dalam bidang '
                'pemrograman dan pengembangan web maupun mobile. Saya juga '
                'terus berusaha meningkatkan kemampuan dan pengalaman agar '
                'dapat menjadi seorang developer yang kreatif, inovatif, dan '
                'mampu menghasilkan solusi teknologi yang bermanfaat.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
            ),
          ),
          SizedBox(height: 12,),
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
          ),
          SizedBox(height: 20,),
          const Text(
            'Riwayat Pendidikan',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),
          ),
          const Card(
            child: Column(
              children: [
                InfoRow(
                  ikon: Icons.school, 
                  label: 'Perguruan Tinggi', 
                  value: 'Instituut Teknologi & Bisnis Bina Sarana Global'
                ),
                Divider(height: 1,),
                InfoRow(
                  ikon: Icons.menu_book, 
                  label: 'SMA', 
                  value: 'SMAN 13 KAB.TANGERANG/MIPA'
                ),
                
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}