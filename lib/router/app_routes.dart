import 'package:flutter/material.dart';
import 'package:flutter_components_app/models/models.dart';
import 'package:flutter_components_app/screens/listview_builder_screen.dart';
import 'package:flutter_components_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //   route: 'home',
    //   name: 'Home Screen',
    //   screen: const HomeScreen(),
    //   icon: Icons.home_filled,
    // ),
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
    MenuOption(
      route: 'avatar',
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOption(
      route: 'animated',
      name: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_outlined,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Text Inputs',
      screen: const InputsScreen(),
      icon: Icons.input_sharp,
    ),
    MenuOption(
      route: 'slider',
      name: 'Sliders & Checks',
      screen: const SliderScreen(),
      icon: Icons.linear_scale_rounded,
    ),
    MenuOption(
      route: 'listviewbuilder',
      name: 'InfiniteScroll & Pull Refresh',
      screen: const ListViewBuilderScreen(),
      icon: Icons.build_outlined,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
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
