import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tes_t/Listview.dart';
// import 'package:tes_t/Capp.dart';
import 'package:tes_t/firebase_options.dart';
import 'package:tes_t/main1.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Test",
      home: listview(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}