import 'package:bloc/bloc.dart';
import 'package:bookly_mvvm/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:equatable/equatable.dart';

part 'faiture_books_state.dart';

class FaitureBooksCubit extends Cubit<FeatureBooksState> {
  FaitureBooksCubit() : super(FeatureBooksInitial());
}
