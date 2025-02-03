import 'package:fpdart/fpdart.dart';
import 'package:interview_app/src/core/failure.dart';
import 'package:interview_app/src/domain/entities/book.dart';
import 'package:interview_app/src/domain/entities/result_page.dart';

abstract class IBooksRepository {
  Future<Either<Failure, ResultPage<Book>>> searchBooks({
    required String query,
    required int page,
    required int pageSize,
  });

  Future<Either<Failure, Unit>> addFavoriteBook(Book book);
  Future<Either<Failure, Unit>> removeFavoriteBook(Book book);
  Future<Either<Failure, List<Book>>> getFavoriteBooks();
}
