part of 'featured_books_cubit.dart';


abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();
}

class FeaturedBooksInitial extends FeaturedBooksState {
  @override
  List<Object> get props => [];
}

class FeaturedBooksLoading extends FeaturedBooksState {
  @override
  List<Object> get props => [];
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);

  @override
  List<Object> get props => [books];
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String failureMessage;

  const FeaturedBooksFailure(this.failureMessage);

  @override
  List<Object> get props => [failureMessage];
}
