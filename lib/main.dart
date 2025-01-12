import 'package:flutter/material.dart';
import 'package:flutter_application_6kunm2/ikkinchiOyna.dart';
import 'HomeScreen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ob-Havo ilovasi",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const Homescreen(),
      routes: {
        '/home': (context) => const Homescreen(),
        '/ikkinchiOyna': (context) => const ikkinchiOyna(),
        //'/settings':(context) => const SettingsScreen(),
      },
    );
  }
}
