import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthDataSource {
  Stream<User?> get authStateChanges;
  User? get currentUser;
  Future<void> signOut();
}

@LazySingleton(as: IAuthDataSource)
class AuthRepository implements IAuthDataSource {
  final FirebaseAuth _firebaseAuth;

  AuthRepository(this._firebaseAuth);

  @override
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Future<void> signOut() => _firebaseAuth.signOut();
}
