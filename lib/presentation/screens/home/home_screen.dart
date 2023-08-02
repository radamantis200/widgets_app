import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final itemMenu = appMenuItems[index];
        return _CustomListTitle(itemMenu: itemMenu);
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.itemMenu,
  });

  final MenuItem itemMenu;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(
        itemMenu.icon,
        color: colors.primary,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
      ),
      title: Text(itemMenu.title),
      subtitle: Text(itemMenu.subtitle),
      onTap: () {
        context.push(itemMenu.url);
      },
    );
  }
}
