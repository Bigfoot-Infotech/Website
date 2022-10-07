import 'package:bigfoot/items/item_services.dart';
import 'package:flutter/material.dart';


class ServicesGrid extends StatelessWidget {

  var _services = [
    {
      "name": "Graphics Design",
      "image": "images/gd.jpg",
       },
    {
      "name": "Social Media Marketing",
      "image": "images/smm.jpg",

    },
    {
      "name": "Android App Development",
      "image": "images/aad.jpg",

    },
    {
      "name": "iOS App Development",
      "image": "images/iosAppDev.jpg",
    },
    {
      "name": "Business Strategy Development",
      "image": "images/bsd.jpg",
    },
    {
      "name": "Website Development",
      "image": "images/wd.jpg",
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
