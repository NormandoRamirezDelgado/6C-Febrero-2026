import 'package:componentes/models/models.dart';
import 'package:componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOption = <MenuOption> [
    MenuOption(
      route: 'home', 
      icon: Icons.home_max_outlined, 
      name: 'Home Screen', 
      screen: HomeScreen()
    ),

    MenuOption(route: 'listview1', icon: Icons.list, name: 'ListView Tipo 1', screen: ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt_outlined, name: 'ListView Tipo 2', screen: ListView2Screen()),
    MenuOption(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alertas - Alerts', screen: AlertScreen()),
    MenuOption(route: 'card', icon: Icons.credit_card, name: 'Tarjetas - Cards', screen: CardScreen()),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOption) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic>onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => AlertScreen()
    );
  }

}