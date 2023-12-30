import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const String routeName = 'snackbar_screen';

  const SnackBarScreen({Key? key}) : super(key: key);

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('This is a SnackBar'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('This is a Dialog'),
          content: const Text('This is a Dialog Content'),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Close'),
            ),
            FilledButton(
              onPressed: () => context.pop(),
              child: const Text('Accept'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('snackbar_screen'),
      appBar: AppBar(
        title: const Text('SnackBars and Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                      'Pariatur laboris est anim voluptate adipisicing laboris esse consectetur non est culpa sunt labore nostrud. Sunt do cupidatat aliqua consectetur ea laboris tempor ad. Est est labore esse culpa officia ea laboris anim consectetur in voluptate mollit officia ex.',
                    )
                  ],
                );
              },
              child: const Text('Used Licenses'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show Dialog'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Show SnackBar'),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}
