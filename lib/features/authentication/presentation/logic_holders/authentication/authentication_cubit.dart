import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_ledger/features/authentication/domain/usecases/auth_check_usecase.dart';
import 'package:my_ledger/features/authentication/presentation/logic_holders/authentication/authentication_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(@Named('AuthCheck') AuthState initialState) : super(initialState);

  Future<void> signOut() async {
    emit(AuthState.unauthenticated());
  }
}

@module
abstract class AuthModule {
  @preResolve
  @Named('AuthCheck')
  Future<AuthState> check(AuthCheckUseCase useCase) async {
    final value = await useCase();

    return value.fold(
        (l) => const AuthState.unauthenticated(),
        (r) => r.fold(() => const AuthState.unauthenticated(),
            (a) => const AuthState.authenticated()));
  }
}
