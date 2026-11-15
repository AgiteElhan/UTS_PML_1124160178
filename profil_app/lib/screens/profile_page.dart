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
        title: const Text(
          'Profile Agit elhan',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}