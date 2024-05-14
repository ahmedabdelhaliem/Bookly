import 'package:bookly_mvvm/core/errors/failure.dart';
import 'package:bookly_mvvm/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestsellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
}
