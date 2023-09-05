import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  static const String routeName = 'button_screen';

  const ButtonScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: const Placeholder(),
    );
  }
}
