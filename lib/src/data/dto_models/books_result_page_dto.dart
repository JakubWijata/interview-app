// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_app/src/data/dto_models/book_dto.dart';

part 'books_result_page_dto.freezed.dart';
part 'books_result_page_dto.g.dart';

@freezed
class BooksResultPageDTO with _$BooksResultPageDTO {
  const factory BooksResultPageDTO({
    @JsonKey(name: 'docs') required List<BookDTO> books,
    required int start,
    required int numFound,
  }) = _BooksResultPageDTO;

  factory BooksResultPageDTO.fromJson(Map<String, dynamic> json) =>
      _$BooksResultPageDTOFromJson(json);
}
