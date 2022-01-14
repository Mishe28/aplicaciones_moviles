import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    // TODO: borrar home
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'listview tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listview2',
        name: 'listview tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list_alt_rounded),
    MenuOption(
        route: 'alert',
        name: 'Alerta',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'card',
        name: 'Tarjeta',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes ={};
    for (var option in menuOptions ) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }




    return appRoutes;
  }




  /*static Map<String, Widget Function(BuildContext)> routes = {
        'home'     : (BuildContext context) => const HomeScreen(),
        'listview1': (BuildContext context) => const Listview1Screen(),
        'listview2': (BuildContext context) => const Listview2Screen(),
        'alert'    : (BuildContext context) => const AlertScreen(),
        'card'     : (BuildContext context) => const CardScreen(),

  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
