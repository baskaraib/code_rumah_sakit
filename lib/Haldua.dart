import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_1/Hallima.dart';
import 'package:flutter_application_1/camera.dart';


class Haldua extends StatelessWidget {
  // Deklarasikan controller di sini
  final TextEditingController nikController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController tanggallahirController = TextEditingController();
  final TextEditingController jeniskelaminController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();

  void _saveToFirebase(String nik, String nama, String tanggallahir, String jeniskelamin, String alamat) {
    DatabaseReference dbRef = FirebaseDatabase.instance.ref().child("Data Diri");
    String? id = dbRef.push().key;
    dbRef.child(id!).set({
      'Nik': nik,
      'Nama': nama,
      'Tanggal Lahir': tanggallahir,
      'Jenis Kelamin': jeniskelamin,
      'Alamat': alamat
    }).then((_) {
      print("Data saved successfully");
    }).catchError((error) {
      print("Failed to save data: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pendaftaran Pasien Baru"),
        backgroundColor: Color.fromARGB(255, 74, 144, 202)
      ),
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/logo.png',
              width: 250,
              height: 250,
            ),
            TextField(
              controller: nikController,
              decoration: InputDecoration(
                hintText: "Nik",
              ),
            ),
            TextField(
              controller: namaController,
              decoration: InputDecoration(
                hintText: "Nama",
              ),
            ),
            TextField(
              controller: tanggallahirController,
              decoration: InputDecoration(
                hintText: "Tanggal Lahir",
              ),
            ),
            TextField(
              controller: jeniskelaminController,
              decoration: InputDecoration(
                hintText: "Jenis Kelamin",
              ),
            ),
            TextField(
              controller: alamatController,
              decoration: InputDecoration(
                hintText: "Alamat",
              ),
            ),
            SizedBox(height: 20), // Spasi tambahan antara input fields dan tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Penempatan tombol secara merata
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Ambil nilai dari controller saat tombol ditekan
                    String nik = nikController.text;
                    String nama = namaController.text;
                    String tanggallahir = tanggallahirController.text;
                    String jeniskelamin = jeniskelaminController.text;
                    String alamat = alamatController.text;
                    // Panggil fungsi untuk menyimpan ke Firebase
                    _saveToFirebase(nik, nama, tanggallahir, jeniskelamin, alamat);
                    // Tampilkan dialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Selamat'),
                          content: Text('Pendaftaran Berhasil'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Hallima()),);
                              },
                              child: Text('Selanjutnya'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Daftar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CameraScreen()),
                    );
                  },
                  child: Text('Buka Kamera'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
