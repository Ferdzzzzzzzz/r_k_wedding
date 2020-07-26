import 'package:bloc/bloc.dart';
import 'package:client_app/domain/auth/facades/i_auth_facade.dart';
import 'package:injectable/injectable.dart';
import './auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final IAuthFacade _authFacade;

  AuthCubit(this._authFacade) : super(const AuthState.initial());

  Future<void> authCheck() async {
    final userOption = await _authFacade.getSignedInUser();

    emit(userOption.fold(
      () => const AuthState.notAuthenticated(),
      (_) => const AuthState.authenticated(),
    ));
  }

  Future<void> signOut() async {
    await _authFacade.signOut();
    emit(const AuthState.notAuthenticated());
  }
}
