import 'package:go_router/go_router.dart';
import 'package:mi_app_flutter/presentation/progress/progress_screen.dart';
import 'package:mi_app_flutter/presentation/screens/buttons/buttons_screen.dart';
import 'package:mi_app_flutter/presentation/screens/cards/cards_screen.dart';
import 'package:mi_app_flutter/presentation/screens/home/home_screen.dart';
import 'package:mi_app_flutter/presentation/snackbar/snackbar_screen.dart';
import 'package:mi_app_flutter/presentation/animated/animated_screen.dart';
import 'package:mi_app_flutter/presentation/tutorial/app_tutorial_screen.dart';
import 'package:mi_app_flutter/presentation/theme_changer/theme_changer_screen.dart';
import 'package:mi_app_flutter/presentation/counter_riverpod/counter_riverpod_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),

    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),
    GoRoute(
      path: '/theme-changer',
      name: ThemeChangerScreen.name,
      builder: (context, state) => const ThemeChangerScreen(),
    ),
    GoRoute(
      path: '/counter-riverdpod',
      name: CounterRiverpodScreen.name,
      builder: (context, state) => const CounterRiverpodScreen(),
    ),
  ],
);
