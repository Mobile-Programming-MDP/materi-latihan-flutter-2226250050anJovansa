import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hallo Widget",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: FirstScreen());
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jovansa Putra Laksana'),
        actions: <Widget>[
          //icon di kanan appbar
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home, color: Colors.white))
        ],
        leading: IconButton(
            //icon di kiri appbar
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            )),
      ),
      body: const Center(
        child: Text('Halo Jovansa Putra Laksana'),
      ),
    );
  }
}
