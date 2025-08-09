import 'package:bookly/features/home/presentation/views/book_detailes_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/home';
  static const kBookView = '/bookDetails';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(path: kBookView, builder: (context, state) => BookDetailesView()),
      // GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
