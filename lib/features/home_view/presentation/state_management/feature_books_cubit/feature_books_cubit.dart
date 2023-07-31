import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model.dart';
import '../../../data/repository/home_repository.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepository) : super(FeatureBooksInitial());

  final BaseHomeRepository homeRepository;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRepository.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeatureBooksFailure(failure.errorMessage));
      },
      (books) {
        emit(FeatureBooksSuccess(books));
      },
    );
  }
}
