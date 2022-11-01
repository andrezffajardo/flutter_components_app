import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('ListView1'),
        ),
        body: ListView(
          children: const [
            Text('Hi World'),
            Text('Hi World'),
            Text('Hi World'),
            Text('Hi World'),
          ],
        ));
  }
}
