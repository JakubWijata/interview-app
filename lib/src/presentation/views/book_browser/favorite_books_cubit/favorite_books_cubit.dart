import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_app/src/core/failure.dart';
import 'package:interview_app/src/domain/entities/book.dart';
import 'package:interview_app/src/domain/repositories/books_repository/i_books_repository.dart';

part 'favorite_books_state.dart';
part 'favorite_books_cubit.freezed.dart';

@injectable
class FavoriteBooksCubit extends Cubit<FavoriteBooksState> {
  final IBooksRepository _booksRepository;

  FavoriteBooksCubit(this._booksRepository)
      : super(FavoriteBooksState.initial());

  Future<void> loadInitData() async {
    emit(
      state.copyWith(
        failureLoadingBooks: none(),
        isLoadingBooks: true,
        favoriteBooks: [],
      ),
    );

    final result = await _booksRepository.getFavoriteBooks();

    result.fold(
      (failure) => emit(
        state.copyWith(
          failureLoadingBooks: some(failure),
          isLoadingBooks: false,
        ),
      ),
      (books) {
        emit(
          state.copyWith(
            favoriteBooks: books,
            isLoadingBooks: false,
          ),
        );
      },
    );
  }

  Future<void> addFavoriteBook(Book book) async {
    emit(
      state.copyWith(
        failureProcessingBooks: none(),
        processingBooks: [...state.processingBooks, book],
      ),
    );

    final result = await _booksRepository.addFavoriteBook(book);

    result.fold(
      (failure) => emit(
        state.copyWith(
          failureProcessingBooks: some(failure),
          processingBooks:
              state.processingBooks.where((b) => b != book).toList(),
        ),
      ),
      (_) {
        emit(
          state.copyWith(
            processingBooks:
                state.processingBooks.where((b) => b != book).toList(),
            favoriteBooks: [...state.favoriteBooks, book],
          ),
        );
      },
    );
  }

  Future<void> removeFavoriteBook(Book book) async {
    emit(
      state.copyWith(
        failureProcessingBooks: none(),
        processingBooks: [...state.processingBooks, book],
      ),
    );

    final result = await _booksRepository.removeFavoriteBook(book);

    result.fold(
      (failure) => emit(
        state.copyWith(
          failureProcessingBooks: some(failure),
          processingBooks:
              state.processingBooks.where((b) => b != book).toList(),
        ),
      ),
      (_) {
        emit(
          state.copyWith(
            processingBooks:
                state.processingBooks.where((b) => b != book).toList(),
            favoriteBooks: state.favoriteBooks.where((b) => b != book).toList(),
          ),
        );
      },
    );
  }
}
