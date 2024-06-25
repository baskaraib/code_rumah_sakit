import 'package:flutter/material.dart';
import 'package:flutter_application_1/Haldua.dart';
import 'package:flutter_application_1/Haltiga.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 92, 172, 238),
        title: Text("Rumah Sakit Umum"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(0.0),
              child: Image.asset(
                'assets/samping.png',
                width: 300,
                height: 150,
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Haldua()));
              },
              child: Card(
                child: Container(
                  height: 220,
                  width: 200,
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/baru.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Pasien Baru",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Khusus bagi yang BELUM PERNAH Menjadi Pasien Rumah Sakit Umum",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Haltiga()));
              },
              child: Card(
                child: Container(
                  height: 220,
                  width: 200,
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/lama.png',
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Pasien Lama",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Khusus bagi yang SUDAH PERNAH Menjadi Pasien Rumah Sakit Umum",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Contact center : 112-80880 234",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.message, size: 15),
                  SizedBox(width: 5),
                  Text(
                    "081918232654",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
