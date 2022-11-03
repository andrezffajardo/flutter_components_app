import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'product1',
    'product2',
    'product3',
    'product4',
    'product5',
  ];

  const ListView1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView1'),
        ),
        body: ListView(
          children: [
            ...options
                .map(
                  (product) => ListTile(
                    title: Text(product),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
                )
                .toList()
            // ListTile(
            //   leading: Icon(Icons.access_time_sharp),
            //   title: Text('Hi World'),
            // ),
          ],
        ));
  }
}
