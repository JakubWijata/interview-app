import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_app/src/core/failure.dart';
import 'package:interview_app/src/data/repositories_implementations/books_repository.dart';
import 'package:interview_app/src/domain/entities/book.dart';
import 'package:interview_app/src/presentation/views/common/debouncer.dart';

part 'book_browser_state.dart';
part 'book_browser_cubit.freezed.dart';

@injectable
class BookBrowserCubit extends Cubit<BookBrowserState> {
  BookBrowserCubit(this.booksRepository) : super(BookBrowserState.initial());

  static const int _initPage = 1;
  static const int _pageSize = 20;

  final BooksRepository booksRepository;
  final Debouncer _debouncer = Debouncer(
    duration: Duration(
      milliseconds: 250,
    ),
  );

  Future<void> _searchBooks(String query) async {
    emit(
      state.copyWith(
        query: query,
        books: [],
        isLoading: true,
        hasMore: true,
        failure: none(),
      ),
    );

    final result = await booksRepository.searchBooks(
      query: query,
      page: _initPage,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          failure: some(failure),
          query: query,
          isLoading: false,
        ),
      ),
      (resultPage) {
        emit(
          state.copyWith(
            books: resultPage.items as List<Book>,
            hasMore: resultPage.hasMore,
            failure: none(),
            isLoading: false,
            query: query,
            page: 1,
          ),
        );
      },
    );
  }

  void searchBooks(String query) {
    _debouncer.run(() => _searchBooks(query));
  }

  Future<void> loadMoreBooks() async {
    if (state.isLoading || !state.hasMore) {
      return;
    }

    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    final result = await booksRepository.searchBooks(
      query: state.query,
      page: state.page + 1,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          failure: some(failure),
          isLoading: false,
        ),
      ),
      (resultPage) {
        emit(
          state.copyWith(
            books: [...state.books, ...resultPage.items as List<Book>],
            hasMore: resultPage.hasMore,
            failure: none(),
            isLoading: false,
            page: state.page + 1,
          ),
        );
      },
    );
  }

  void clear() {
    emit(BookBrowserState.initial());
  }
}
