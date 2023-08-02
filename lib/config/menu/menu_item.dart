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
      subtitle: 'Menus variado',
      icon: Icons.bubble_chart,
      url: '/buttoms'),
  MenuItem(
      title: 'Card',
      subtitle: 'Card personlizate',
      icon: Icons.card_giftcard,
      url: '/cards')
];
