import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_app/src/core/failure.dart';
import 'package:interview_app/src/data/mappers/books_result_page_mapper.dart';
import 'package:interview_app/src/data/network/api_client.dart';
import 'package:interview_app/src/domain/entities/book.dart';
import 'package:interview_app/src/domain/entities/result_page.dart';
import 'package:interview_app/src/domain/repositories/books_repository/i_books_repository.dart';

@singleton
class BooksRepository implements IBooksRepository {
  final ApiClient _api;

  BooksRepository(this._api);

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
}
