import 'package:flutter/material.dart';
import 'package:flutter_components_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const ListView2Screen(),
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'listview1': (context) => const ListView1Screen(),
        'listview2': (context) => const ListView2Screen(),
      },
    );
  }
}
