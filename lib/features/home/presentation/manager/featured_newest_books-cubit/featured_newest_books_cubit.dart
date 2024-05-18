import 'package:bloc/bloc.dart';
import 'package:bookly_mvvm/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_newest_books_state.dart';

class FeaturedNewestBooksCubit extends Cubit<FeaturedNewestBooksState> {
  FeaturedNewestBooksCubit(this.homeRepo) : super(FeaturedNewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(FeaturedNewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(FeaturedNewestBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeaturedNewestBooksSuccess(books));
    });
  }
}
