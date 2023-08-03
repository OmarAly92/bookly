import 'package:bookly/features/home_view/data/repository/home_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home_view/data/models/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepository) : super(SearchInitial());

  final BaseHomeRepository homeRepository;
late List<BookModel>_books ;
  Future<void> fetchAllProgrammingBooks() async {
    emit(SearchLoading());
    var result = await homeRepository.fetchAllProgrammingBooks();

    result.fold(
      (failureMessage) {
        emit(SearchFailure(failureMessage.errorMessage));
      },
      (books) {
        _books = books;
        emit(SearchSuccess(books));
      },
    );
  }

  void searchAction({required String searchedTitle,}) {
    List<BookModel> result = _books
        .where((item) =>
            item.volumeInfo.title!.toLowerCase().startsWith(searchedTitle))
        .toList();
    emit(SearchDone(result));
  }
}
