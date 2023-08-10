import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/counter_screen',
      builder: (context, state) => const CounterScreen(),
    ),
    GoRoute(
      path: '/buttoms',
      builder: (context, state) => const ButtomScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardScreen(),
    ),
    GoRoute(
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbars',
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      builder: (context, state) => const UiControlsScreen(),
    ),
    GoRoute(
      path: '/app-tutorial',
      builder: (context, state) => const AppTutorialScreen(),
    ),
  ],
);
