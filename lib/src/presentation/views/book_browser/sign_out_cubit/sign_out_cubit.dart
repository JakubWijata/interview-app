import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_app/src/core/failure.dart';
import 'package:interview_app/src/domain/repositories/auth_repository/i_auth_repositories.dart';

part 'sign_out_state.dart';
part 'sign_out_cubit.freezed.dart';

@injectable
class SignOutCubit extends Cubit<SignOutState> {
  final IAuthRepository _authRepository;
  SignOutCubit(this._authRepository) : super(SignOutState.initial());

  Future<void> signOut() async {
    emit(state.copyWith(isLoading: true));
    final result = await _authRepository.signOut();
    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          failure: some(failure),
        ),
      ),
      (_) => emit(
        state.copyWith(
          isLoading: false,
          failure: none(),
        ),
      ),
    );
  }
}
