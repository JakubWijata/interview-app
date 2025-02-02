// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_dto.freezed.dart';
part 'book_dto.g.dart';

@freezed
class BookDTO with _$BookDTO {
  const factory BookDTO({
    required String key,
    @JsonKey(
      name: 'author_name',
      defaultValue: [],
    )
    required List<String> authorName,
    required String title,
  }) = _BookDto;

  factory BookDTO.fromJson(Map<String, dynamic> json) =>
      _$BookDTOFromJson(json);
}
