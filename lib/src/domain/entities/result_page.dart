import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_page.freezed.dart';

@freezed
class ResultPage<T> with _$ResultPage {
  const factory ResultPage({
    required List<T> items,
    required bool hasMore,
  }) = _ResultPage;
}
