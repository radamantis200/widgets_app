import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const fontSize30 = TextStyle(fontSize: 30);

    void fnIncrement() {
      ref.read(counterProvider.notifier).increment();
    }

    void fnDecrement() {
      ref.read(counterProvider.notifier).decrement();
    }

    void fnReset() {
      ref.read(counterProvider.notifier).reset();
    }

    final counter = ref.watch(counterProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Números de clicks',
              style: fontSize30,
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _CustomFloatingActionButtom(
          fnIncrement: () => fnIncrement(),
          fnDecrement: () => fnDecrement(),
          fnReset: () => fnReset(),
        ));
  }
}

class _CustomFloatingActionButtom extends StatelessWidget {
  final void Function() fnIncrement;
  final void Function() fnDecrement;
  final void Function() fnReset;

  const _CustomFloatingActionButtom(
      {required this.fnDecrement,
      required this.fnIncrement,
      required this.fnReset});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          heroTag: null,
          onPressed: fnIncrement,
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          heroTag: null,
          onPressed: fnReset,
          child: const Icon(Icons.restore),
        ),
        FloatingActionButton(
          heroTag: null,
          onPressed: fnDecrement,
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
