import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:fpdart/fpdart.dart';
import 'package:interview_app/src/domain/repositories/books_repository/i_books_repository.dart';
import 'package:interview_app/src/domain/entities/book.dart';
import 'package:interview_app/src/core/failure.dart';
import 'package:interview_app/src/presentation/views/book_browser/favorite_books_cubit/favorite_books_cubit.dart';

class MockBooksRepository extends Mock implements IBooksRepository {}

void main() {
  group('FavoriteBooksCubit', () {
    late MockBooksRepository mockBooksRepository;
    late FavoriteBooksCubit favoriteBooksCubit;
    final failure = Failure('Operation failed');
    final book = Book(
      key: '1',
      title: 'Test Book',
      authorNames: ['Author'],
    );

    setUp(() {
      mockBooksRepository = MockBooksRepository();
      favoriteBooksCubit = FavoriteBooksCubit(mockBooksRepository);
    });

    tearDown(() {
      favoriteBooksCubit.close();
    });

    test('initial state is FavoriteBooksState.initial()', () {
      expect(favoriteBooksCubit.state, FavoriteBooksState.initial());
    });

    blocTest<FavoriteBooksCubit, FavoriteBooksState>(
      'emits [isLoadingBooks: true, isLoadingBooks: false, favoriteBooks: [book]] when loadInitData succeeds',
      build: () => favoriteBooksCubit,
      setUp: () => when(mockBooksRepository.getFavoriteBooks())
          .thenAnswer((_) async => right([book])),
      verify: (_) {
        verify(mockBooksRepository.getFavoriteBooks()).called(1);
      },
      act: (cubit) => cubit.loadInitData(),
      expect: () => [
        FavoriteBooksState.initial().copyWith(isLoadingBooks: true),
        FavoriteBooksState.initial().copyWith(
          isLoadingBooks: false,
          favoriteBooks: [book],
        ),
      ],
    );

    blocTest<FavoriteBooksCubit, FavoriteBooksState>(
      'emits [isLoadingBooks: true, isLoadingBooks: false, failureLoadingBooks: some(failure)] when loadInitData fails',
      build: () => favoriteBooksCubit,
      setUp: () => when(mockBooksRepository.getFavoriteBooks())
          .thenAnswer((_) async => left(failure)),
      verify: (_) {
        verify(mockBooksRepository.getFavoriteBooks()).called(1);
      },
      act: (cubit) => cubit.loadInitData(),
      expect: () => [
        FavoriteBooksState.initial().copyWith(isLoadingBooks: true),
        FavoriteBooksState.initial().copyWith(
          isLoadingBooks: false,
          failureLoadingBooks: some(failure),
        ),
      ],
    );

    blocTest<FavoriteBooksCubit, FavoriteBooksState>(
      'emits [processingBooks: [book], favoriteBooks: [book]] when addFavoriteBook succeeds',
      build: () => favoriteBooksCubit,
      setUp: () => when(mockBooksRepository.addFavoriteBook(book))
          .thenAnswer((_) async => right(unit)),
      verify: (_) {
        verify(mockBooksRepository.addFavoriteBook(book)).called(1);
      },
      act: (cubit) => cubit.addFavoriteBook(book),
      expect: () => [
        FavoriteBooksState.initial().copyWith(processingBooks: [book]),
        FavoriteBooksState.initial().copyWith(
          processingBooks: [],
          favoriteBooks: [book],
        ),
      ],
    );

    blocTest<FavoriteBooksCubit, FavoriteBooksState>(
      'emits [processingBooks: [book], failureProcessingBooks: some(failure)] when addFavoriteBook fails',
      build: () => favoriteBooksCubit,
      setUp: () => when(mockBooksRepository.addFavoriteBook(book))
          .thenAnswer((_) async => left(failure)),
      verify: (_) {
        verify(mockBooksRepository.addFavoriteBook(book)).called(1);
      },
      act: (cubit) => cubit.addFavoriteBook(book),
      expect: () => [
        FavoriteBooksState.initial().copyWith(processingBooks: [book]),
        FavoriteBooksState.initial().copyWith(
          processingBooks: [],
          failureProcessingBooks: some(failure),
        ),
      ],
    );

    blocTest<FavoriteBooksCubit, FavoriteBooksState>(
      'emits [processingBooks: [book], favoriteBooks: []] when removeFavoriteBook succeeds',
      build: () => favoriteBooksCubit,
      seed: () => FavoriteBooksState.initial().copyWith(favoriteBooks: [book]),
      setUp: () => when(mockBooksRepository.removeFavoriteBook(book))
          .thenAnswer((_) async => right(unit)),
      verify: (_) {
        verify(mockBooksRepository.removeFavoriteBook(book)).called(1);
      },
      act: (cubit) => cubit.removeFavoriteBook(book),
      expect: () => [
        FavoriteBooksState.initial().copyWith(
          processingBooks: [book],
          favoriteBooks: [book],
        ),
        FavoriteBooksState.initial().copyWith(
          processingBooks: [],
          favoriteBooks: [],
        ),
      ],
    );

    blocTest<FavoriteBooksCubit, FavoriteBooksState>(
      'emits [processingBooks: [book], failureProcessingBooks: some(failure)] when removeFavoriteBook fails',
      build: () => favoriteBooksCubit,
      seed: () => FavoriteBooksState.initial().copyWith(favoriteBooks: [book]),
      setUp: () => when(mockBooksRepository.removeFavoriteBook(book))
          .thenAnswer((_) async => left(failure)),
      verify: (_) {
        verify(mockBooksRepository.removeFavoriteBook(book)).called(1);
      },
      act: (cubit) => cubit.removeFavoriteBook(book),
      expect: () => [
        FavoriteBooksState.initial().copyWith(
          processingBooks: [book],
          favoriteBooks: [book],
        ),
        FavoriteBooksState.initial().copyWith(
          processingBooks: [],
          favoriteBooks: [book],
          failureProcessingBooks: some(failure),
        ),
      ],
    );
  });
}
