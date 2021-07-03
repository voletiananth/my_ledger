import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_ledger/core/loading_hud/logic_holders/loading_hud_cubit.dart';
import 'package:my_ledger/core/loading_hud/logic_holders/loading_hud_state.dart';

class ProgressHud extends HookWidget {
  late final Widget child;

  ProgressHud({required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProgressHudCubit, ProgressHudState>(
      listener: (context, state) {
        print(state);
        state.when(
          initial: () {},
          loading: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                    valueColor:
                        AlwaysStoppedAnimation(Theme.of(context).primaryColor),
                    strokeWidth: 8,
                  ),
                );
              },
            );
          },
        );
      },
      child: child,
    );
  }
}
