import 'package:go_router/go_router.dart';
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
          return OnBoarding();
        },
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );
}
