import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model.dart';
import '../../../data/repository/home_repository.dart';

part '../../../presentation/state_management/featured_books_cubit/featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepository) : super(FeaturedBooksInitial());

  final BaseHomeRepository homeRepository;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await homeRepository.fetchFeaturedBooks();
    result.fold(
      (failureMessage) {
        emit(FeaturedBooksFailure(failureMessage.errorMessage));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
