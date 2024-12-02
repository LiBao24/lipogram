import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lipogram/controllers/';

class EditProfilePage extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profil'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              // Simpan data profil
              controller.updateProfile(
                nameController.text,
                usernameController.text,
                bioController.text,
              );
              Get.back(); // Kembali ke halaman sebelumnya
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // Tambahkan aksi untuk mengganti foto profil
              },
              child: CircleAvatar(
                radius: 50,
                child: Icon(Icons.edit),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Nama Pengguna',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: bioController,
              decoration: InputDecoration(
                labelText: 'Bio',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
