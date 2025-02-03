import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_app/src/data/dto_models/book_dto.dart';

abstract class IBooksDataSource {
  Future<void> addFavoriteBook(BookDTO book, String userId);
  Future<void> removeFavoriteBook(BookDTO book, String userId);
  Future<List<BookDTO>> getFavoriteBooks(String userId);
}

@LazySingleton(as: IBooksDataSource)
class FirebaseBooksDataSource extends IBooksDataSource {
  final FirebaseFirestore _firebaseFirestore;
  static const String _favoriteBooksCollection = 'favorite_books';
  static const String _userCollection = 'users';

  FirebaseBooksDataSource(this._firebaseFirestore);

  @override
  Future<void> addFavoriteBook(BookDTO book, String userId) async {
    final bookId = _sanitizeBookId(book.key);
    final docRef = _getFavoriteBooksReference(userId).doc(bookId);
    final docSnapshot = await docRef.get();

    if (!docSnapshot.exists) {
      await docRef.set(book);
    }
  }

  @override
  Future<void> removeFavoriteBook(BookDTO book, String userId) async {
    final bookId = _sanitizeBookId(book.key);
    final docRef = _getFavoriteBooksReference(userId).doc(bookId);
    final docSnapshot = await docRef.get();

    if (docSnapshot.exists) {
      await docRef.delete();
    }
  }

  @override
  Future<List<BookDTO>> getFavoriteBooks(String userId) async {
    final books = await _getFavoriteBooksReference(userId).get();
    return books.docs.map((e) => e.data()).toList();
  }

  String _sanitizeBookId(String bookId) {
    return bookId.replaceAll('/', '+');
  }

  CollectionReference<BookDTO> _getFavoriteBooksReference(String userId) {
    return _firebaseFirestore
        .collection(_userCollection)
        .doc(userId)
        .collection(_favoriteBooksCollection)
        .withConverter<BookDTO>(
          fromFirestore: (snapshot, options) =>
              BookDTO.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toJson(),
        );
  }
}
