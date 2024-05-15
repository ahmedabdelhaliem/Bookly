import 'package:bookly_mvvm/core/errors/failure.dart';
import 'package:bookly_mvvm/core/utils/api_servise.dart';
import 'package:bookly_mvvm/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  final ApiService apiService;

  HomeRepo(this.apiService);
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();

  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
}
