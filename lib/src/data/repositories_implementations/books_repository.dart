import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_app/src/core/failure.dart';
import 'package:interview_app/src/data/data_sources/auth_data_source.dart';
import 'package:interview_app/src/data/data_sources/books_data_source.dart';
import 'package:interview_app/src/data/mappers/books_result_page_mapper.dart';
import 'package:interview_app/src/data/network/api_client.dart';
import 'package:interview_app/src/domain/entities/book.dart';
import 'package:interview_app/src/domain/entities/result_page.dart';
import 'package:interview_app/src/domain/repositories/books_repository/i_books_repository.dart';

@Singleton(as: IBooksRepository)
class BooksRepository implements IBooksRepository {
  final ApiClient _api;
  final IAuthDataSource _authDataSource;
  final IBooksDataSource _booksDataSource;

  BooksRepository(
    this._api,
    this._booksDataSource,
    this._authDataSource,
  );

  @override
  Future<Either<Failure, ResultPage<Book>>> searchBooks({
    required String query,
    required int page,
    required int pageSize,
  }) async {
    try {
      final result = await _api.searchBooks(
        {
          'q': query,
          'page': page,
          'limit': pageSize,
        },
      );

      return right(result.toEntity());
    } catch (e) {
      return left(Failure('Error searching books: $e'));
    }
  }

  @override
  Future<Either<Failure, Unit>> addFavoriteBook(Book book) async {
    try {
      final userId = _authDataSource.currentUser!.uid;
      await _booksDataSource.addFavoriteBook(
        BookDTOMapper.fromEntity(book),
        userId,
      );

      return right(unit);
    } catch (e) {
      return left(Failure('Error adding favorite book'));
    }
  }

  @override
  Future<Either<Failure, Unit>> removeFavoriteBook(Book book) async {
    try {
      final userId = _authDataSource.currentUser!.uid;
      await _booksDataSource.removeFavoriteBook(
        BookDTOMapper.fromEntity(book),
        userId,
      );

      return right(unit);
    } catch (e) {
      return left(Failure('Error removing favorite book'));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> getFavoriteBooks() async {
    try {
      final booksResult = await _booksDataSource
          .getFavoriteBooks(_authDataSource.currentUser!.uid);
      final books = booksResult.map((e) => e.toEntity()).toList();

      return right(books);
    } catch (e) {
      return left(Failure('Error getting favorite books'));
    }
  }
}
