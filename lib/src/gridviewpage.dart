import 'dart:html';

import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  Item usulkp = Item(
      title: "Usul KP",
      subTitle: "Cek Usul Kenaikan Pangkat",
      event: "1 Item",
      img: 'images/user.png');

  Item usulpensiun = Item(
    title: "Usul Pensiun",
    subTitle: "Cek Usul Pensiun",
    //redirect page
    event: ,
    img: 'image/pensiun.png',
  );

  Item usulk3 = Item();

  Item konsulonline = Item();

  @override
  Widget build(BuildContext context) {
    List<Item> myList = [usulkp, usulpensiun, usulk3, konsulonline];
    return Flexible(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 18.0,
          mainAxisSpacing: 18.0,
        ),
        children: myList.map((data) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: InkWell(
              child: Column(
                children: [
                  Image.asset(
                    data.img,
                    width: 42.0,
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    data.title.toString(),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Item {
  String? title;
  String? subTitle;
  String? event;
  String img;
  Item({
    this.title,
    this.subTitle,
    this.event,
    required this.img,
  });
}
