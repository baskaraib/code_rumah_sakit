import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


class Haltiga extends StatefulWidget {
  @override
  _HaltigaState createState() => _HaltigaState();
}

class _HaltigaState extends State<Haltiga> {
  final TextEditingController nikController = TextEditingController();
  final TextEditingController lahirController = TextEditingController();
  List<Map<String, dynamic>> _dataList = [];
  bool _isVerified = false;

  Future<void> _verifyUser(String nik, String tanggalLahir) async {
    DatabaseReference dbRef = FirebaseDatabase.instance.ref().child("Data Diri");

    try {
      DataSnapshot snapshot = await dbRef.orderByChild("Nik").equalTo(nik).get();
      if (snapshot.exists) {
        Map<dynamic, dynamic> users = snapshot.value as Map<dynamic, dynamic>;
        List<Map<String, dynamic>> dataListTemp = [];
        for (var user in users.values) {
          if (user['Tanggal Lahir'] == tanggalLahir) {
            Map<String, dynamic> userMap = Map<String, dynamic>.from(user);
            dataListTemp.add(userMap);
          }
        }
        setState(() {
          _dataList = dataListTemp;
          _isVerified = dataListTemp.isNotEmpty;
        });

        if (_isVerified) {
          Navigator.pushNamed(context, '/Tabel', arguments: _dataList);
        }
        return;
      }
      setState(() {
        _isVerified = false;
      });
    } catch (e) {
      print('Error getting data: $e');
      setState(() {
        _isVerified = false;
      });
    }
  }

  void _login() async {
    String nik = nikController.text;
    String tanggalLahir = lahirController.text;

    await _verifyUser(nik, tanggalLahir);

    if (!_isVerified) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('NIK atau Tanggal Lahir salah'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: TextButton.styleFrom(foregroundColor: Colors.red),
                child: Text('Coba Lagi'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 92, 172, 238),
        title: const Text("Verifikasi Pasien"),
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
                hintText: "NIK",
              ),
            ),
            TextField(
              controller: lahirController,
              decoration: InputDecoration(
                hintText: "Tanggal Lahir",
              ),
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: _login,
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}