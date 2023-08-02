import 'package:flutter/material.dart';

class ButtomScreen extends StatelessWidget {
  const ButtomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttom Screen'),
      ),
      body: const Center(
        child: Text('Buttom Screen'),
      ),
    );
  }
}
