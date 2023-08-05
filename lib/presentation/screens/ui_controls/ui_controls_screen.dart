import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Control')),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = false;
  Transportation selectedTransportation = Transportation.car;

  void changeStatus(bool value) {
    isDeveloper = value;
    setState(() {});
  }

  void changeSelected(Transportation value) {
    setState(() {
      selectedTransportation = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionles'),
          value: isDeveloper,
          onChanged: (value) => changeStatus(value),
        ),
        ExpansionTile(
          initiallyExpanded: true,
          title: const Text('Vehículo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            CustomRadioListTitle(
              value: Transportation.car,
              groupValue: selectedTransportation,
              title: 'By Car',
              subTitle: 'Viajar por carro',
              onChange: (value) => changeSelected(value!),
            ),
            CustomRadioListTitle(
              value: Transportation.boat,
              groupValue: selectedTransportation,
              title: 'By Boat',
              subTitle: 'Viajar por barco',
              onChange: (value) => changeSelected(value!),
            ),
            CustomRadioListTitle(
              value: Transportation.plane,
              groupValue: selectedTransportation,
              title: 'By Plane',
              subTitle: 'Viajar por avión',
              onChange: (value) => changeSelected(value!),
            ),
            CustomRadioListTitle(
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              title: 'By Submarine',
              subTitle: 'Viajar por submarino',
              onChange: (value) => changeSelected(value!),
            )
          ],
        ),
      ],
    );
  }
}

class CustomRadioListTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  final Transportation value;
  final Transportation groupValue;
  final void Function(Transportation?)? onChange;

  const CustomRadioListTitle({
    super.key,
    required this.value,
    required this.groupValue,
    required this.title,
    required this.subTitle,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      value: value,
      groupValue: groupValue,
      onChanged: onChange,
    );
  }
}
