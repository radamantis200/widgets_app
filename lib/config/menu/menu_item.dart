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
      title: 'Buttom',
      subtitle: 'Botones variados',
      icon: Icons.bubble_chart,
      url: '/buttoms'),
  MenuItem(
      title: 'Card',
      subtitle: 'Tarjetas personalizado',
      icon: Icons.card_giftcard,
      url: '/cards'),
  MenuItem(
      title: 'Progress Indicators',
      subtitle: 'Indicador de progreso infinito y controlado',
      icon: Icons.card_giftcard,
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
      icon: Icons.access_time_rounded,
      url: '/app-tutorial')
];
