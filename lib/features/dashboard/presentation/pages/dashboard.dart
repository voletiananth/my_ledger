import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

var sample = [

];

class Dashboard extends StatelessWidget {
  Dashboard({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return StickyHeader(
            header: header,
            content: content,
          );
        },
        separatorBuilder: (context, _) => Container(
              child: Divider(
                color: Colors.grey,
                thickness: 0.3,
              ),
              padding: EdgeInsets.symmetric(horizontal: 24.0),
            ),
        itemCount: 10);
  }

  Widget get header {
    return Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.only(top: 12, bottom: 4, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  children: [
                    TextSpan(text: "  "),
                    TextSpan(
                        text: "Today",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 12))
                  ],
                  text: "1Jun",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500)),
            ),
            Text(
              'Total : 5000',
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ));
  }

  Widget get content {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: List.generate(2, (index) {
          return Container(
            width: double.infinity,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade500,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 4.0),
                ]),
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
           
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "Medicines",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      child: Text(
                        'ABCDEFGHIJK',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12, left: 4, right: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "Quantity : 55",
                          style: TextStyle(),
                        ),
                      ),
                      Container(
                        child: Text("Amount : 5000"),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
