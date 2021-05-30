import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_ledger/core/loading_hud/loading_hud.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_ledger/core/loading_hud/logic_holders/loading_hud_cubit.dart';

class Sample extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProgressHud(
          child: Center(
            child: ElevatedButton(
                onPressed: () {
                  context.read<ProgressHudCubit>().showHud();
                },
                child: Text("helloo")),
          )),
    );
  }

  static String routeName = '/sample';
}
