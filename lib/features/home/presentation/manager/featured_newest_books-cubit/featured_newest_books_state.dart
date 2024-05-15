part of 'featured_newest_books_cubit.dart';

sealed class FeaturedNewestBooksState extends Equatable {
  const FeaturedNewestBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedNewestBooksInitial extends FeaturedNewestBooksState {}

final class FeaturedNewestBooksLoading extends FeaturedNewestBooksState {}

final class FeaturedNewestBooksSuccess extends FeaturedNewestBooksState {
  final List<BookModel> books;

  const FeaturedNewestBooksSuccess(this.books);
}

final class FeaturedNewestBooksFailure extends FeaturedNewestBooksState {
  final String errMessage;

  const FeaturedNewestBooksFailure(this.errMessage);
}
