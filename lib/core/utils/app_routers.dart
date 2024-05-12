import 'package:bookly_mvvm/features/home/presentation/views/book_view_ditals.dart';
import 'package:bookly_mvvm/features/home/presentation/views/home_view.dart';
import 'package:bookly_mvvm/features/splash/presentation/splashview.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kHomeViewDetails = '/BookHomeViewDetails';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kHomeViewDetails,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
