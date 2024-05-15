import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const String routeName = 'theme_changer_screen';
  const ThemeChangerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer Screen'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            },
            icon: Icon(
              isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
            ),
          )
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colorList = ref.watch(colorListProvider);
    final int selectedColorIndex =
        ref.watch(themeNotifierProvider).selectedColor;

    return ListView.builder(
      itemCount: colorList.length,
      itemBuilder: (context, index) {
        final Color color = colorList[index];
        return RadioListTile(
          title: Text(
            'Color theme',
            style: TextStyle(color: color),
          ),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: selectedColorIndex,
          onChanged: (value) {
            // ref
            //     .read(selectedColorIndexProvider.notifier)
            //     .update((state) => value!);
            ref
                .read(themeNotifierProvider.notifier)
                .updateSelectedColorIndex(value!);
          },
        );
      },
    );
  }
}
