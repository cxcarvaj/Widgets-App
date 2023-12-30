import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonScreen.routeName,
      builder: (context, state) => const ButtonScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardScreen.routeName,
      builder: (context, state) => const CardScreen(),
    ),
    GoRoute(
      path: '/progress_indicator',
      name: ProgressScreen.routeName,
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbar_screen',
      name: SnackBarScreen.routeName,
      builder: (context, state) => const SnackBarScreen(),
    ),
        GoRoute(
      path: '/animated_screen',
      name: AnimatedScreen.routeName,
      builder: (context, state) => const AnimatedScreen(),
    ),
  ],
);
