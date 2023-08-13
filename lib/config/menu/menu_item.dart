import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final String url;

  MenuItem(
      {required this.title,
      required this.subtitle,
      required this.icon,
      required this.url});
}

final List<MenuItem> appMenuItems = [
  MenuItem(
      title: 'Counter',
      subtitle: 'Counter App',
      icon: Icons.add,
      url: '/counter_screen'),
  MenuItem(
      title: 'Buttom',
      subtitle: 'Botones variados',
      icon: Icons.smart_button_outlined,
      url: '/buttoms'),
  MenuItem(
      title: 'Card',
      subtitle: 'Tarjetas personalizado',
      icon: Icons.credit_card,
      url: '/cards'),
  MenuItem(
      title: 'Progress Indicators',
      subtitle: 'Indicador de progreso infinito y controlado',
      icon: Icons.refresh_rounded,
      url: '/progress'),
  MenuItem(
      title: 'Snackbars y diálogos',
      subtitle: 'Indicador en la pantalla',
      icon: Icons.info_outline,
      url: '/snackbars'),
  MenuItem(
      title: 'Animated container',
      subtitle: 'Stateful widget animado',
      icon: Icons.check_box_outline_blank_rounded,
      url: '/animated'),
  MenuItem(
      title: 'UI Controls + Tiles',
      subtitle: 'Una serie de controles de Flutter',
      icon: Icons.car_rental_outlined,
      url: '/ui-controls'),
  MenuItem(
      title: 'App tutorial',
      subtitle: 'Small tutorial',
      icon: Icons.list_alt_outlined,
      url: '/app-tutorial'),
  MenuItem(
      title: 'Cambiar tema',
      subtitle: 'Cambiar tema de la aplicación',
      icon: Icons.color_lens_outlined,
      url: '/theme-changer')
];
