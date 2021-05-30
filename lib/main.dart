import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_ledger/core/di/injection.dart';
import 'package:my_ledger/core/loading_hud/logic_holders/loading_hud_cubit.dart';
import 'package:my_ledger/features/authentication/presentation/logic_holders/authentication/authentication_cubit.dart';
import 'package:my_ledger/features/home/presentation/pages/home_page.dart';
import 'package:my_ledger/features/sample/sample.dart';

import 'features/authentication/presentation/pages/mobile_number_page/mobile_number_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.dev);
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Color(0xFF313E66)
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthCubit>(),),
        BlocProvider(create: (context)=>getIt<ProgressHudCubit>())
      ],
     
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
          // initialRoute: Sample.routeName,
          routes: {
            HomePage.routeName: (_) => HomePage(),
            MobileNumberPage.routeName: (_) => MobileNumberPage(),
            Sample.routeName:(_)=>Sample()
          },
        ),
      ),
    );
  }
}
