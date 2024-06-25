import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Hallima extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 92, 172, 238),
          title: const Text("Jenis Penyakit")),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/samping.png',
                width: 300,
                height: 150,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        child: Container(
                          height: 130,
                          width: 130,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/baru.png',
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "POLI DALAM",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Card(
                        child: Container(
                          height: 130,
                          width: 130,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/baru.png',
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "POLI BEDAH",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        child: Container(
                          height: 130,
                          width: 130,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/baru.png',
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "POLI ANAK",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Card(
                        child: Container(
                          height: 130,
                          width: 130,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/baru.png',
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "POLI MATA",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        child: Container(
                          height: 130,
                          width: 130,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/baru.png',
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "POLI GIGI",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Card(
                        child: Container(
                          height: 130,
                          width: 130,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/baru.png',
                                width: 80,
                                height: 80,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "POLI UMUM",
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
