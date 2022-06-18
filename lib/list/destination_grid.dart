import 'package:bigfoot/items/item_services.dart';
import 'package:flutter/material.dart';


class ServicesGrid extends StatelessWidget {

  var _services = [
    {
      "name": "Graphics Design",
      "image": "images/graphic.png",
       },
    {
      "name": "Social Media Marketing",
      "image": "images/smm.png",

    },
    {
      "name": "Android App Development",
      "image": "images/androiddev.webp",

    },
    {
      "name": "iOS App Development",
      "image": "images/iosdev.png",
    },
    {
      "name": "Business Strategy Development",
      "image": "images/strategydev.webp",
    },
    {
      "name": "Website Development",
      "image": "images/webdev.png",
    },
  ];


  ServicesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      child: GridView.extent(
          maxCrossAxisExtent: 500.0,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 0.0,
          childAspectRatio: 0.9,
          children: _services.map((el) => ItemDestination(
            el!["name"]!,
            el!["image"]!,
          )
          ).toList()
      ),
    );
  }
}
