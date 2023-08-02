import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtomScreen extends StatelessWidget {
  const ButtomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Buttom Screen'),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(onPressed: () {}, child: const Text('Text Button')),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_outlined),
                  label: const Text('Text Button Icon')),
              FilledButton(
                  onPressed: () {}, child: const Text('Filled Button')),
              FilledButton.tonal(
                  onPressed: () {}, child: const Text('Filled Button tonal')),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.abc),
                  label: const Text('Filled Buttom Icon')),
              IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
              IconButton.filled(
                  onPressed: () {}, icon: const Icon(Icons.ac_unit)),
              IconButton.filledTonal(
                  onPressed: () {}, icon: const Icon(Icons.abc_sharp))
            ],
          ),
        ));
  }
}
