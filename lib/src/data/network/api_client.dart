import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_app/src/app/app_constants.dart';
import 'package:interview_app/src/data/dto_models/books_result_page_dto.dart';
import 'package:retrofit/retrofit.dart';

part "api_client.g.dart";

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  ApiClient get apiClient => ApiClient(dio, baseUrl: AppConstants.booksBaseUrl);
}

@RestApi(baseUrl: AppConstants.booksBaseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/search.json")
  Future<BooksResultPageDTO> searchBooks(
      @Queries() Map<String, dynamic> queries);
}
