import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'product1',
    'product2',
    'product3',
    'product4',
    'product5',
  ];

  const ListView2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('ListView2'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          ),
          separatorBuilder: (_, __) => Divider(
            color: Colors.grey[400],
          ),
          itemCount: options.length,
        ));
  }
}
