import 'package:flutter/material.dart';
import 'package:front_les_evades/ui/Theme.dart';
import 'package:front_les_evades/ui/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Les évades du chenil',
      theme: theme,
      home: const Home(title: 'Flutter Demo Home Page'),
    );
  }
}
