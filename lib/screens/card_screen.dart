import 'package:flutter/material.dart';
import 'package:flutter_components_app/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10,
          ),
          child: ListView(
            children: [
              Card(
                  child: Column(children: const [
                ListTile(
                  leading:
                      Icon(Icons.photo_album_sharp, color: AppTheme.primary),
                  title: Text('Title'),
                  subtitle: Text(
                      'Est exercitation magna enim minim. Anim anim nisi culpa ullamco qui. Eu laborum ipsum sit eu. Adipisicing esse proident enim ipsum nulla.'),
                )
              ]))
            ],
          ),
        ));
  }
}
