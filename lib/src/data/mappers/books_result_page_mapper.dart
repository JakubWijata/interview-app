import 'package:interview_app/src/data/dto_models/book_dto.dart';
import 'package:interview_app/src/data/dto_models/books_result_page_dto.dart';
import 'package:interview_app/src/domain/entities/book.dart';
import 'package:interview_app/src/domain/entities/result_page.dart';

extension BooksResultPageMapper on BooksResultPageDTO {
  ResultPage<Book> toEntity() {
    return ResultPage(
      hasMore: start + books.length < numFound,
      items: books.map((e) => e.toEntity()).toList(),
    );
  }
}

extension BookDTOMapper on BookDTO {
  Book toEntity() {
    return Book(
      title: title,
      authorName: authorName,
      key: key,
    );
  }
}
