// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Hallima.dart';


// // ignore: must_be_immutable
// class HalEmpat extends StatelessWidget {
//   String teks = "";
//   TextEditingController bpjs = TextEditingController();
//   TextEditingController jaminan = TextEditingController();
//   TextEditingController kepesertaan = TextEditingController();
//   void _alertdialog(String str) {
//     if (str.isEmpty) return;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 92, 172, 238),
//           title: const Text("Form Jaminan / Angsuran")),
//       body: Container(
//         padding: EdgeInsets.all(50.0),
//         child: Column(
//           children: [
//             Image.asset(
//               'logo.png',
//               width: 300,
//               height: 150,
//             ),
//             Text(
//               teks,
//               style: TextStyle(fontSize: 20.0),
//             ),
//             TextField(
//               controller: bpjs,
//               decoration: InputDecoration(
//                 hintText: "BPJS / ASKES",
//               ),
//               onSubmitted: (String str) {
//                 _alertdialog(str);
//               },
//             ),
//             TextField(
//               controller: jaminan,
//               decoration: InputDecoration(
//                 hintText: "Jaminan / Angsuran",
//               ),
//               onSubmitted: (String str) {
//                 _alertdialog(str);
//               },
//             ),
//             TextField(
//               controller: kepesertaan,
//               decoration: InputDecoration(
//                 hintText: "No Kepesertaan",
//               ),
//               onSubmitted: (String str) {
//                 _alertdialog(str);
//               },
//             ),
//             Container(
//               padding: EdgeInsets.all(12.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return AlertDialog(
//                         title: Text('Selamat'),
//                         content: Text('Data Berhasil di Proses'),
//                         actions: <Widget>[
//                           TextButton(
//                             onPressed: () {
//                               Navigator.push(context, MaterialPageRoute(builder: (context) => Hallima()),);
//                             },
//                             style: ElevatedButton.styleFrom(
//                                 foregroundColor: Colors.blue),
//                             child: Text('Selanjutnya'),
//                           ),
//                         ],
//                       );
//                     },
//                   );
//                 },
//                 child: Text('Selanjutnya'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
