import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('DashBoard'),
          actions: [
            Center(
              child: DropdownButton(
                onChanged: (value) {},
                items: [
                  DropdownMenuItem(
                    value: 'Cycle 1 (Mar 2019) ',
                    child: Text('Cycle 1 (Mar 2019) '),
                  ),
                  DropdownMenuItem(
                      value: 'Cycle 1 (Mar 2020) ',
                      child: Text('Cycle 1 (Mar 2020) '))
                ],
                value: 'Cycle 1 (Mar 2019) ',
                style: TextStyle(color: Colors.white),
                underline: Container(
                  height: 0,
                ),
                isDense: true,
                dropdownColor: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [_graph(context)],
          ),
        ),
      ),
    );
  }

  Widget _graph(BuildContext context) {
    final _textWidth = MediaQuery.of(context).size.width / 2;
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: _textWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Seed'),
                Text('Medicines'),
                Text('Nutrients'),
                Text('Gasoline'),
                Text('Equipment'),
                Text('Maintaince'),
                Text('Other')
              ],
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white24,
              ),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 20,
                      blurRadius: 45,
                      offset: Offset(0, 7),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

