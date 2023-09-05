import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  static const String routeName = 'card_screen';
  const CardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: const Placeholder(),
    );
  }
}
