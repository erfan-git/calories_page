import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var sizeOfIcon = MediaQuery.of(context).size.width < 370.0 ? 18.0 : 24.0;
    var sizeOfaAmount = MediaQuery.of(context).size.width < 370.0 ? 9.0 : 18.0;
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.fromLTRB(16, 16, 16, 8),
      width: double.infinity,
      // height: size.height * 0.25,
      color: Colors.transparent,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.ltr,
        children: [
          calcItem('کالری مجاز', 1300,sizeOfaAmount),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: ImageIcon(
              AssetImage("assets/icons/negetive.png"),
              size: sizeOfIcon,
              color: Colors.black,
            ),
          ),
          calcItem('غذا', 1180,sizeOfaAmount),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Icon(Icons.add,size: sizeOfIcon,),
          ),
          calcItem('فعالیت', 120,sizeOfaAmount),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: ImageIcon(
              AssetImage("assets/icons/equal.png"),
              size: sizeOfIcon,
              // color: Colors.black,
            ),
          ),
          calcItem('فعالیت', 120,sizeOfaAmount, color: true),
        ],
      ),
    );
  }

  Widget calcItem(String name, int amount,double sizeOfAmount, {bool color = false}) {
    var textColor = color ? Colors.black : Colors.grey;

    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          // height: 4,
          // constraints: BoxConstraints(minHeight: 4),
          padding: EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[400],
            ),
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(30),
              right: Radius.circular(30),
            ),
          ),
          child: Center(
            child: Text(
              amount.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: textColor, fontSize: sizeOfAmount),
            ),
          ),
        ),
        Text(
          name,
          style: TextStyle(
              // fontSize: 9,
              ),
        )
      ],
    );
  }
}
