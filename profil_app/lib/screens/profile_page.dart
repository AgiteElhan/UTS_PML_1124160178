import 'package:flutter/material.dart';
import 'package:profil_app/models/profile.dart';

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
    github: 'AgiteElhan'
  );

  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
                    child: Icon(Icons.person,size: 35,),
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
    );
  }
}