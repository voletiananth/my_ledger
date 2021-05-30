abstract class ProgressHudState {
  const ProgressHudState();
  const factory ProgressHudState.initial() = _ProgressHudInitial;
  const factory ProgressHudState.loading() = _ProgressHudLoading;
  B when<B>({required B initial(), required B loading()});
}

class _ProgressHudInitial extends ProgressHudState {
  const _ProgressHudInitial();

  @override
  B when<B>({required B Function() initial, required B Function() loading}) {
    return initial();
  }
}

class _ProgressHudLoading extends ProgressHudState {
  const _ProgressHudLoading();

  @override
  B when<B>({required B Function() initial,required B Function() loading}) {
    return loading();
  }
}
