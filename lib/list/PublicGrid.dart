import 'package:bigfoot/items/item_people.dart';
import 'package:flutter/material.dart';


class PublicGrid extends StatelessWidget {

  final List<String> _image = ["images/ashish.jpeg","images/deepa.jpg",'images/sandeep_lama.jpeg'];
  final List<String> _name = ["Ashish Manadhar","Deepa Agrawal","Sandeep Lama",];
  final List<String> _role = ["CEO,Smart Tech Nepal","CEO, Jump 4 Sport", "CEO, Inksvilla"];
  final List<String> _subImage = [ "images/ashish_sub.gif","images/deepa_sub.gif","images/sandeep_lama_sub.gif"];

  bool _screenType;


  PublicGrid(this._screenType);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      height: _screenType?500:400,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _screenType?2:5,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemCount: _image.length,
        itemBuilder: (context, index) {
          return ItemPeople(_name[index], _role[index], _image[index], _subImage[index],_screenType);
        },
      ),
    );
  }
}
