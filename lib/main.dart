import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_ledger/core/di/injection.dart';
import 'package:my_ledger/features/authentication/presentation/logic_holders/authentication/authentication_cubit.dart';
import 'package:my_ledger/features/home/presentation/pages/home_page.dart';

import 'features/authentication/presentation/pages/mobile_number_page/mobile_number_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.dev);
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Color(0xff384877)
  // ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => getIt<AuthCubit>(),
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'My Ledger',
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Color(0xff384877),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: context.read<AuthCubit>().state.when(
              authenticated: () => HomePage.routeName,
              unauthenticated: () => MobileNumberPage.routeName),
          routes: {
            HomePage.routeName: (_) => HomePage(),
            MobileNumberPage.routeName: (_) => MobileNumberPage()
          },
        ),
      ),
    );
  }
}
