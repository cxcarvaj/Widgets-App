import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Buttons',
    subtitle: 'Various buttons on Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Cards',
    subtitle: 'Card containers styled with Flutter',
    link: '/cards',
    icon: Icons.credit_card_outlined,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subtitle: 'General indicators and controlled',
    link: '/progress_indicator',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'SnackBars and Dialogs',
    subtitle: 'SnackBars and Dialogs Screen',
    link: '/snackbar_screen',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container',
    subtitle: 'Stateful Widget animated',
    link: '/animated_screen',
    icon: Icons.check_box_outline_blank_rounded,
  ),
];
