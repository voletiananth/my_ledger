

abstract class AuthState {
  const AuthState();
  const factory AuthState.authenticated() = _Authenticated;
 const factory AuthState.unauthenticated() = _Unauthenticated;

  B when<B>({required B authenticated(), required B unauthenticated()});
}

class _Authenticated extends AuthState {
  const _Authenticated();
  @override
  B when<B>(
          {required B Function() authenticated,
          required B Function() unauthenticated}) =>
      authenticated();
}

class _Unauthenticated extends AuthState {
  const _Unauthenticated();

  @override
  B when<B>(
          {required B Function() authenticated,
          required B Function() unauthenticated}) =>
      unauthenticated();
}
