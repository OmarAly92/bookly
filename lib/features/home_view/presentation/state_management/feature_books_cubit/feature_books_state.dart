part of 'feature_books_cubit.dart';

abstract class FeatureBooksState extends Equatable {
  const FeatureBooksState();
}

class FeatureBooksInitial extends FeatureBooksState {
  @override
  List<Object> get props => [];
}

class FeatureBooksLoading extends FeatureBooksState {
  @override
  List<Object> get props => [];
}

class FeatureBooksSuccess extends FeatureBooksState {
  final List<BookModel> bookList;

  const FeatureBooksSuccess(this.bookList);

  @override
  List<Object> get props => [bookList];
}

class FeatureBooksFailure extends FeatureBooksState {
  final String failureMessage;

  const FeatureBooksFailure(this.failureMessage);

  @override
  List<Object> get props => [failureMessage];
}
