part of 'favorite_books_cubit.dart';

@freezed
class FavoriteBooksState with _$FavoriteBooksState {
  const factory FavoriteBooksState({
    required List<Book> favoriteBooks,
    required List<Book> processingBooks,
    required bool isLoadingBooks,
    required Option<Failure> failureLoadingBooks,
    required Option<Failure> failureProcessingBooks,
  }) = _FavoriteBooksState;

  factory FavoriteBooksState.initial() => FavoriteBooksState(
        favoriteBooks: [],
        processingBooks: [],
        isLoadingBooks: false,
        failureLoadingBooks: none(),
        failureProcessingBooks: none(),
      );
}
