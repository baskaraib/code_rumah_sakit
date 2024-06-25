import 'package:flutter/material.dart';
import 'package:flutter_application_1/map.dart';
import 'package:flutter_application_1/Hallima.dart';

class Tabelne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dataList =
        ModalRoute.of(context)!.settings.arguments as List<Map<String, dynamic>>? ?? [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 92, 172, 238),
        title: const Text("Data Diri Pasien"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: dataList.length + 1, // Tambahkan 1 untuk card tambahan
              itemBuilder: (context, index) {
                if (index < dataList.length) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DataRowItem(
                                label: 'No Rekam Medis',
                                value: dataList[index]["norekam"]?.toString() ?? ''),
                            DataRowItem(label: 'Nama', value: dataList[index]["Nama"] ?? ''),
                            DataRowItem(
                                label: 'Alamat', value: dataList[index]["Alamat"] ?? ''),
                            DataRowItem(
                                label: 'Jenis Kelamin',
                                value: dataList[index]["Jenis Kelamin"] ?? ''),
                            DataRowItem(label: 'NIK', value: dataList[index]["Nik"] ?? ''),
                            DataRowItem(
                                label: 'Tanggal Lahir',
                                value: dataList[index]["Tanggal Lahir"] ?? ''),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SimpleMapPage()),
                        );
                      },
                      child: Card(
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lokasi Pasien',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(height: 8),
                              Image.asset(
                                'assets/maps.png', // Ubah sesuai dengan path gambar peta Anda
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Klik untuk melihat lokasi di peta',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 16.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Hallima()),); // Navigasi ke halaman Hallima
                },
                child: Text('Selanjutnya'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DataRowItem extends StatelessWidget {
  final String label;
  final String value;

  const DataRowItem({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value),
        SizedBox(height: 8),
      ],
    );
  }
}
