
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String nama = 'Agit Elhandinnata';
  final String status = 'Mahasiswa';
  final String email = 'agit@gmail.com';
  final String noHp = '0812615261';
  final String github = 'AgiteElhan';
  final String kelas = 'Software Engineering 2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Agit Elhandinnata',
      color: Colors.white,
      darkTheme: ThemeData.dark(),
      
    );
  }
}