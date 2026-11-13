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
          passwordController.text == '123456') {

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Form(
            key: formKey, 

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.account_circle,
                  size: 80,
                  color: Colors.blue,
                ),
                const SizedBox(height: 14,),
                const Text(
                  'LOGIN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 14,),
                const Text(
                  'Aplikasi Profile APP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                  ),
                ),

                SizedBox(height: 40,),

                const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87
                  ),
                ),
                SizedBox(height: 8,),
                TextFormField(
                  controller: emailController,

                  decoration: InputDecoration(
                    hintText: 'Masukkan Alamat Emaul',
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Email Tidak Boleh Kosong!!';
                    }

                    if (!value.contains('@') || !value.contains('.')){
                      return 'Masukkan Email valid!!';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8,),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87
                  ),
                ),
                SizedBox(height: 8,),
                TextFormField(
                  controller: passwordController,

                  decoration: InputDecoration(
                    hintText: '*********',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.blue,
                    ),

                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordHidden 
                        ?Icons.visibility_off
                        :Icons.visibility,
                      ),
                      onPressed: (){
                        setState(() {
                          isPasswordHidden = !isPasswordHidden;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Password Tidak Boleh Kosong!!';
                    }

                    if (value.length<5){
                      return 'Password Minimal 6 karakter';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 30,),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: isLoading?null :login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: isLoading
                    ? const CircularProgressIndicator(
                      color: Colors.white,
                    ): const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    )
                    ),
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}