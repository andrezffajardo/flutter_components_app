import 'package:flutter/material.dart';
//import 'package:flutter_components_app/screens/listview1_screen.dart';
import 'package:flutter_components_app/screens/listview2_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: ListView2Screen());
  }
}
