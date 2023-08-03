part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();
}

class SearchInitial extends SearchState {
  @override
  List<Object> get props => [];
}

class SearchLoading extends SearchState {
  @override
  List<Object> get props => [];
}

class SearchSuccess extends SearchState {
  final List<BookModel> books;

  const SearchSuccess(this.books);

  @override
  List<Object> get props => [books];
}

class SearchFailure extends SearchState {
  final String failureMessage;

  const SearchFailure(this.failureMessage);

  @override
  List<Object> get props => [failureMessage];
}

class SearchDone extends SearchState {
  final List<BookModel> result;

  const SearchDone(this.result);

  @override
  List<Object> get props => [result];
}
