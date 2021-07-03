import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:my_ledger/core/di/injection.dart';
import 'package:my_ledger/core/loading_hud/loading_hud.dart';
import 'package:my_ledger/core/loading_hud/logic_holders/loading_hud_cubit.dart';
import 'package:my_ledger/features/authentication/presentation/logic_holders/mobile_number/mobile_number_cubit.dart';
import 'package:my_ledger/features/authentication/presentation/logic_holders/otp/otp_cubit.dart';
import 'package:my_ledger/features/authentication/presentation/models/mobile_number_validate.dart';
import 'package:my_ledger/features/authentication/presentation/pages/otp_page/otp_page.dart';
import 'package:my_ledger/features/home/presentation/pages/home_page.dart';

part 'mobile_number_button.dart';
part 'mobile_number_label.dart';
part 'mobile_number_text_field.dart';

class MobileNumberPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MobileNumberCubit>(
      create: (context) => getIt<MobileNumberCubit>(),
      child: ProgressHud(
              child: Scaffold(  
            body: Container(
          margin: EdgeInsets.only(top: 120),
          height: MediaQuery.of(context).size.height * 0.5,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _buildWidget,
          ),
        )),
      )
    );
  }

  get _buildWidget =>
      [MobileNumberLabel(), MobileNumberTextField(), MobileNumberButton()];

  static String routeName = '/mobile-number';
}
