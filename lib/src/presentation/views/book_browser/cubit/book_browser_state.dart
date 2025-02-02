part of 'book_browser_cubit.dart';

@freezed
class BookBrowserState with _$BookBrowserState {
  const factory BookBrowserState({
    required List<Book> books,
    required bool isLoading,
    required String query,
    required Option<Failure> failure,
    required int page,
    required bool hasMore,
  }) = _BookBrowserState;

  factory BookBrowserState.initial() => BookBrowserState(
        books: [],
        isLoading: false,
        query: '',
        failure: none(),
        hasMore: true,
        page: 1,
      );
}
