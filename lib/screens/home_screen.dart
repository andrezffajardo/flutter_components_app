import 'package:flutter/material.dart';
import 'package:flutter_components_app/screens/listview1_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Components'),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.access_time_outlined),
                  title: const Text('Route Name'),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const ListView1Screen(),
                    // );
                    // Navigator.push(context, route);
                    Navigator.pushNamed(context, 'listview2');
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
