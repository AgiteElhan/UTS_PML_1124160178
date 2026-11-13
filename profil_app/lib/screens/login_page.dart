import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isLoading = false;
  bool isPasswordHidden = true;

  void login() async {
    if (formKey.currentState!.validate()){

      setState(() {
        isLoading = true;
      });

      await Future.delayed(const Duration(seconds: 2));

      
      if (emailController.text == 'agit@gmail.com' &&
          passwordController.text == '12345') {

        setState(() {
          isLoading = false;
        });
        Navigator.pushReplacementNamed(context, '/profile');
      } else {
        setState(() {
          isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Email atau password salah!'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}