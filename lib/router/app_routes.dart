import 'package:flutter/material.dart';
import 'package:flutter_components_app/models/models.dart';
import 'package:flutter_components_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      name: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.home_filled,
    ),
    MenuOption(
      route: 'listview1',
      name: 'List View 1',
      screen: const ListView1Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'listview2',
      name: 'List View 2',
      screen: const ListView2Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alert Screen',
      screen: const AlertScreen(),
      icon: Icons.report_problem_outlined,
    ),
    MenuOption(
      route: 'cards',
      name: 'Card Screen',
      screen: const CardScreen(),
      icon: Icons.credit_card_outlined,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const ListView1Screen(),
  //   'listview2': (context) => const ListView2Screen(),
  //   'alert': (context) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
