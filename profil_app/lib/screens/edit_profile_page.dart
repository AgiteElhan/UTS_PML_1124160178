import 'package:flutter/material.dart';
import 'package:profil_app/models/profile.dart';

class EditProfilePage extends StatefulWidget {
  final Profile profile;
  const EditProfilePage({
      super.key,
      required this.profile
    });

  @override
  State<EditProfilePage> createState() => _EditProfilePage();
}

class _EditProfilePage extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController namaController;
  late TextEditingController nimController;
  late TextEditingController prodiController;
  late TextEditingController kelasController;
  late TextEditingController bioController;
  late TextEditingController emailController;
  late TextEditingController hpController;
  late TextEditingController githubController;
  late TextEditingController keahlianController;
  late TextEditingController hobi1Controller;
  late TextEditingController hobi2Controller;
  late TextEditingController hobi3Controller;

  @override
  void initState(){
    super.initState();
    
    namaController = TextEditingController(text: widget.profile.nama);
    nimController = TextEditingController(text: widget.profile.nim);
    prodiController = TextEditingController(text: widget.profile.prodi);
    kelasController = TextEditingController(text: widget.profile.kelas);
    bioController = TextEditingController(text: widget.profile.bio);
    emailController = TextEditingController(text: widget.profile.email);
    hpController = TextEditingController(text: widget.profile.hp);
    githubController = TextEditingController(text: widget.profile.github);
    keahlianController = TextEditingController(text: widget.profile.keahlian);
    hobi1Controller = TextEditingController(text: widget.profile.hobi1);
    hobi2Controller = TextEditingController(text: widget.profile.hobi2);
    hobi3Controller = TextEditingController(text: widget.profile.hobi3);
  }

    Widget buildField(String label, TextEditingController controller) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            border: const OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return '$label tidak boleh kosong';
            }
            return null;
          },
        ),
      );
    }

    void simpanProfile(){
      if(_formKey.currentState!.validate()){
        Profile dataBaru = Profile (
          nama: namaController.text,
          nim: nimController.text,
          hp: hpController.text,
          email: emailController.text,
          github: githubController.text,
          prodi: prodiController.text,
          kelas: kelasController.text,
          bio: bioController.text,
          keahlian: keahlianController.text,
          hobi1: hobi1Controller.text,
          hobi2: hobi2Controller.text,
          hobi3: hobi3Controller.text,
        );

        Navigator.pop(context,dataBaru);
      }
    }
  @override
  void dispose(){
    namaController.dispose();
    nimController.dispose();
    prodiController.dispose();
    kelasController.dispose();
    bioController.dispose();
    emailController.dispose();
    hpController.dispose();
    githubController.dispose();
    keahlianController.dispose();
    hobi1Controller.dispose();
    hobi2Controller.dispose();
    hobi3Controller.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Edit Profile'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

    );
  }
}