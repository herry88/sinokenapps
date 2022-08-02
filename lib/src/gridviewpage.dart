import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  Item usulkp = Item();

  @override
  Widget build(BuildContext context) {
    List<Item> myList = [usulkp, usulpensiun, usulk3, konsulonline];
    return Flexible(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 18.0,
          mainAxisSpacing: 18.0,
        ),
      ),
    );
  }
}

class Item {
  String? title;
  String? subTitle;
  String? event;
  String? img;
  Item({
    this.title,
    this.subTitle,
    this.event,
    this.img,
  });
}
