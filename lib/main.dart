import 'package:bookly_mvvm/constant.dart';
import 'package:bookly_mvvm/core/utils/app_routers.dart';
import 'package:bookly_mvvm/core/utils/server_locator.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo_impel.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/feature_books_cubit/faiture_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/featured_newest_books-cubit/featured_newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeatureBooksCubit(getIt.get<HomeRepoImplementation>())
                ..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) =>
              FeaturedNewestBooksCubit(getIt.get<HomeRepoImplementation>())
                ..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimary,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
