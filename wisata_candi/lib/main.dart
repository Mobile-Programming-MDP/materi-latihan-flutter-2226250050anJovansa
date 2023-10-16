import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wisata Candi",
      theme: ThemeData(primarySwatch: Colors.brown),
      home: const WidgetCandi(),
    );
  }
}

class WidgetCandi extends StatelessWidget{
  
}
