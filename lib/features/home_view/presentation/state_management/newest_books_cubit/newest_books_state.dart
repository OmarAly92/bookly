part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();
}

class NewestBooksInitial extends NewestBooksState {
  @override
  List<Object> get props => [];
}

class NewestBooksLoading extends NewestBooksState {
  @override
  List<Object> get props => [];
}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSuccess(this.books);

  @override
  List<Object> get props => [books];
}

class NewestBooksFailure extends NewestBooksState {
  final String failureMessage;

  const NewestBooksFailure(this.failureMessage);

  @override
  List<Object> get props => [failureMessage];
}
