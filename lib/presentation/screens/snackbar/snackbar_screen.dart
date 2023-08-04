import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    const snackbar = SnackBar(content: Text('Hola Mundo'));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text(
            'Occaecat ullamco incididunt minim enim cupidatat ullamco velit occaecat culpa occaecat consequat cupidatat. Laborum nulla irure pariatur adipisicing. Culpa enim incididunt laboris est velit amet consectetur laborum incididunt qui nulla. Aute aute consequat magna culpa officia. Minim anim veniam magna duis id nisi culpa eu Lorem anim ad velit.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Diálogos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Deserunt laboris nostrud adipisicing excepteur exercitation ad mollit esse commodo anim ullamco anim. Veniam dolor culpa aliquip incididunt sit reprehenderit. Occaecat ipsum elit eu quis id aliqua voluptate pariatur dolor. Eu deserunt et est culpa aute. Aliqua nisi irure minim et anim voluptate consectetur elit nostrud quis culpa ut id.')
                ]);
              },
              child: const Text('Licencias usadas')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogos'))
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showCustomSnackbar(context),
          label: const Text('Mostrar Snackbar'),
          icon: const Icon(Icons.remove_red_eye_outlined)),
    );
  }
}
