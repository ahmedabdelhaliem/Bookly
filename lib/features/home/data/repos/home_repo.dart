import 'package:bookly_mvvm/core/errors/failure.dart';
import 'package:bookly_mvvm/core/utils/api_servise.dart';
import 'package:bookly_mvvm/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  final ApiService apiService;

  HomeRepo(this.apiService);
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&subjectstartIndex =&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServiceFailure());
      // TODO
    }
  }

  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
}
