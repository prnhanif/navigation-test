import 'package:flutter/material.dart';
import 'package:navigation_test/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigasi")),
      body: Column(
        children: [
          Text("Halaman 1"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Home()));
                //.push(
                //MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text("Ke halaman 2")),
        ],
      ),
    );
  }
}
