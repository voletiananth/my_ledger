import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_ledger/features/home/presentation/logic_holders/bottom_bar/bottom_bar_state.dart';
@injectable
class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit() : super(BottomBarState.first());

  void selectIndex(int index) {
    switch (index) {
      case 0:
        emit(BottomBarState.first());
        break;
      case 1:
        emit(BottomBarState.second());
        break;
      default:
        return;
    }
  }
}
