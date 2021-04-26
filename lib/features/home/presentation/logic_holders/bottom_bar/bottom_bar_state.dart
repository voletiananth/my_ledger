abstract class BottomBarState {
  final int currentIndex;
  const BottomBarState(this.currentIndex);
  B map<B>({required B isFirst(), required B isSecond()});

  const factory BottomBarState.first() = _First;
  const factory BottomBarState.second() = _Second;
}

class _First extends BottomBarState {
  const _First() : super(0);

  @override
  B map<B>({required B Function() isFirst, required B Function() isSecond}) {
    return isFirst();
  }
}

class _Second extends BottomBarState {
  const _Second() : super(1);

  @override
  B map<B>({required B Function() isFirst, required B Function() isSecond}) {
    return isSecond();
  }
}
