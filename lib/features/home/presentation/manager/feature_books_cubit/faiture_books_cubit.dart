import 'package:bloc/bloc.dart';
import 'package:bookly_mvvm/core/errors/failure.dart';
import 'package:bookly_mvvm/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'faiture_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold((failure) {
      emit(FeatureBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeatureBooksSuccess(books));
    });
  }
}
