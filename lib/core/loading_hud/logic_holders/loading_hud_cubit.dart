import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'loading_hud_state.dart';

@injectable
class ProgressHudCubit extends Cubit<ProgressHudState> {
  ProgressHudCubit() : super(const ProgressHudState.initial());

  void showHud() {
    emit(ProgressHudState.loading());
    emit(ProgressHudState.initial());
  }
}
