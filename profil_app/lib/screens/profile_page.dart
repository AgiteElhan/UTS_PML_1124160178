import 'package:flutter/material.dart';
import 'package:profil_app/models/profile.dart';
import 'package:profil_app/widget/card.dart';
import 'package:profil_app/screens/edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  final Function(bool) changeTheme;
  const ProfilePage({
    super.key,
    required this.changeTheme,
    });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile dataMahasiswa = Profile(
    nama: 'Agit Elhandinnata', 
    nim: '1124160178', 
    prodi: 'Teknik Informatika', 
    kelas: 'Software Engineering 2', 
    bio: 'Mahasiswa yang tertarik dengan dunia teknologi',
    email: 'agit@gmail.com', 
    hp: '08152617712', 
    github: 'AgiteElhan',
    keahlian: 'Proggramming',
    hobi1: 'Bermain Game mobile legend',
    hobi2: 'Berlari pagi',
    hobi3: 'Bermain PlaySation',
  );

  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.white),
            onPressed: () async {
              final hasil = await Navigator.push<Profile>(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfilePage(
                    profile: dataMahasiswa,
                  ),
                ),
              );

              if (hasil != null) {
                setState(() {
                  dataMahasiswa = hasil;
                });
              }
            },
          ),
        ],
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.white,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: const Text(
          'Profile Agit elhan',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/images/profil.jpeg'
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Agit Elhandinnata',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Mahasiswa',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Tentang Saya'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/',
                  (route) => false,
                );
              },
            ),
            SwitchListTile(
              secondary: const Icon(Icons.dark_mode),
              title: const Text('Dark Mode'),
              value: isDarkMode,
              onChanged: (value) {
                setState(() {
                  isDarkMode = value;
                });

                widget.changeTheme(value);
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            color: Colors.blue,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  backgroundImage: const AssetImage(
                    'assets/images/profil.jpeg'
                  ),
                ),
                SizedBox(height: 16,),
                Text(
                  dataMahasiswa.nama,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  '${dataMahasiswa.prodi} - ${dataMahasiswa.nim}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),
                ),
                SizedBox(height: 12,),
                Text(
                  dataMahasiswa.bio,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14,),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Informasi Kontak',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Divider(),
                Card(
                  child: Column(
                    children: [
                      InfoRow(
                        ikon: Icons.email, 
                        label: 'Email', 
                        value: dataMahasiswa.email
                      ),                      
                      InfoRow(
                        ikon: Icons.phone, 
                        label: 'Nomor Handphone', 
                        value: dataMahasiswa.hp
                      ),
                      InfoRow(
                        ikon: Icons.link, 
                        label: 'GitHub', 
                        value: dataMahasiswa.github
                      ),
                      InfoRow(
                        ikon: Icons.school, 
                        label: 'Kelas', 
                        value: dataMahasiswa.kelas
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  'Hobi dan Keahlian',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 14,),
                Card(
                  child: Column(
                    children: [
                      InfoRow(
                        ikon: Icons.code, 
                        label: 'Keahlian', 
                        value: dataMahasiswa.keahlian
                      ),
                      InfoRow(
                        ikon: Icons.games, 
                        label: 'Hobi', 
                        value: dataMahasiswa.hobi1
                      ),
                      InfoRow(
                        ikon: Icons.directions_run, 
                        label: 'Hobi', 
                        value: dataMahasiswa.hobi2
                      ),
                      InfoRow(
                        ikon: Icons.gamepad, 
                        label: 'Hobi', 
                        value: dataMahasiswa.hobi3
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Terima kasih sudah melihat profil saya!',
              ),
              backgroundColor: Colors.blue,
            ),
          );
        },
        child: const Icon(Icons.info),
      ),
    );
    
  }
}