import 'package:bookly_mvvm/core/utils/api_servise.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo_impel.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(
      HomeRepoImplementation(getIt.get<ApiService>()));

// Alternatively you could write it if you don't like global variables
}
