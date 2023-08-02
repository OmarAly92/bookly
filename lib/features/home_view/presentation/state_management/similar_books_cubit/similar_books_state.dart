part of 'similar_books_cubit.dart';

abstract class SimilarBooksState extends Equatable {
  const SimilarBooksState();
}

class SimilarBooksInitial extends SimilarBooksState {
  @override
  List<Object> get props => [];
}

class SimilarBooksLoading extends SimilarBooksState {
  @override
  List<Object> get props => [];
}

class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccess(this.books);

  @override
  List<Object> get props => [books];
}

class SimilarBooksFailure extends SimilarBooksState {
  final String failureMessage;

  const SimilarBooksFailure(this.failureMessage);

  @override
  List<Object> get props => [failureMessage];
}
