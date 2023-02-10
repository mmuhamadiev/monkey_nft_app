import 'package:go_router/go_router.dart';
import 'package:monkey_nft_app/ui/pages/home_page.dart';
import 'package:monkey_nft_app/ui/pages/on_boarding.dart';
import '../../ui/pages/not_found_page.dart';

class GoRouters {
  // GoRouter configuration
  final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: '/',
        builder: (context, state) {
          return const OnBoarding();
        },
      ),
      GoRoute(
        path: '/home',
        name: '/home',
        builder: (context, state) {
          return HomePage();
        },
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );
}
