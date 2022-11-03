import 'package:flutter/material.dart';
import 'package:flutter_components_app/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Components'),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    menuOptions[index].icon,
                    color: Colors.indigo,
                  ),
                  title: Text(menuOptions[index].name),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const ListView1Screen(),
                    // );
                    // Navigator.push(context, route);
                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
