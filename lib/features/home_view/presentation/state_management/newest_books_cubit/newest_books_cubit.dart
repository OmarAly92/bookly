import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model.dart';
import '../../../data/repository/home_repository.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepository) : super(NewestBooksInitial());
  final BaseHomeRepository homeRepository;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await homeRepository.fetchNewestBooks();
    result.fold((failureMessage) {
      emit(NewestBooksFailure(failureMessage.errorMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
