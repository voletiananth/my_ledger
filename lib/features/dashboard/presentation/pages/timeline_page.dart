import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLinePage extends StatelessWidget {
  
  bool isFirst(int index) => index == 0 ? true : false;
  bool isLast(int index, int length) => index == length - 1;
  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.only(right: 16, left: 16),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return TimelineTile(
                  indicatorStyle:
                      IndicatorStyle(color: Colors.black, width: 16),
                  startChild: DateListItem(index: index),
                  alignment: TimelineAlign.manual,
                  lineXY: .14,
                  endChild: CommodityContainer());
            },
            itemCount: 20,
          ),
        );
  }
}

class CommodityContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        padding: EdgeInsets.only(bottom: 8.0),
        margin: EdgeInsets.only(left: 8, top: 20.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 8.0),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_totalAmountTitle, CommodityItem(), CommodityItem()],
        ),
      ),
    );
  }

  Widget get _totalAmountTitle => Builder(
      builder: (BuildContext context)=> ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          child: Container(
            height: 28,
            padding: EdgeInsets.only(left: 8, right: 8),
            color: Theme.of(context).primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Amount',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  '1000',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ),
  );
}

class CommodityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade400)),
        margin: EdgeInsets.only(top: 8, right: 8, left: 8),
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text('Seed'),
                ),
                Text('Abced')
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Price: 1000'), Text('Quantity: 10')],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DateListItem extends StatelessWidget {
  late final int index;
  DateListItem({required this.index});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$index',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Text(
            'Oct',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black54),
          ),
          Text(
            '2019',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
