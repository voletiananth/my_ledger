import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_ledger/core/di/injection.dart';
import 'package:my_ledger/features/authentication/presentation/pages/mobile_number_page/mobile_number_page.dart';
import 'package:my_ledger/features/dashboard/presentation/pages/timeline_page.dart';
import 'package:my_ledger/features/home/presentation/logic_holders/bottom_bar/bottom_bar_cubit.dart';

class HomePage extends StatelessWidget {
  bool isFirst(int index) => index == 0 ? true : false;
  bool isLast(int index, int length) => index == length - 1;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomBarCubit>(
      create: (context) => getIt<BottomBarCubit>(),
      child: Builder(
        builder: (BuildContext context) => Scaffold(
          appBar: AppBar(
            brightness: Brightness.dark,
            title: DropdownButton(
              underline: Container(
                height: 0,
              ),
              items: [],
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.calendar_today_outlined), onPressed: () {})
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: context.watch<BottomBarCubit>().state.currentIndex,
            onTap: (value) {
              print(value);
              context.read<BottomBarCubit>().selectIndex(value);
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Dashboard'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_outlined),
                  label: 'My Account'),
            ],
          ),
          body: context.watch<BottomBarCubit>().state.map(
              isFirst: () {
                return TimeLinePage();
              },
              isSecond: () => Center(
                      child: ElevatedButton(
                    onPressed: () {
                      getIt<FirebaseAuth>().signOut();
                      Navigator.of(context)
                          .popAndPushNamed(MobileNumberPage.routeName);
                    },
                    child: Text('Sign Out'),
                  ))),
        ),
      ),
    );
  }

  static String routeName = '/home-page';
}
