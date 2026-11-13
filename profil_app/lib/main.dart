import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'screens/about_page.dart';
import 'screens/edit_profile_page.dart';
import 'screens/profile_page.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}




class _MyAppState extends State<MyApp> {

  ThemeMode _themeMode =ThemeMode.light;
  void changeTheme(bool isDark){
    setState(() {
       _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Agit',

      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.blue,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark
        ),
      ),
      themeMode: _themeMode,
      initialRoute: '/',

      routes: {
        '/': (context) => const LoginPage(),

        // '/profile' : (context) =>ProfilePage(
        //   changeTheme:changeTheme
        // ),

        // '/edit-profile': (context) => const EditProfilePage(),

        // '/about': (context) => const AboutPage(),
      },
    );
  }
}