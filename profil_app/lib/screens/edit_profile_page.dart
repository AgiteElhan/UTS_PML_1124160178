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
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}