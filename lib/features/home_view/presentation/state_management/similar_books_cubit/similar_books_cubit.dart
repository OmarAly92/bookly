import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model.dart';
import '../../../data/repository/home_repository.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepository) : super(SimilarBooksInitial());

  final BaseHomeRepository homeRepository;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepository.fetchSimilarBooks(category: category);

    result.fold((failureMessage) {
      emit(SimilarBooksFailure(failureMessage.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
