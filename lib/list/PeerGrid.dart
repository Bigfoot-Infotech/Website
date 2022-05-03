import 'package:bigfoot/items/item_people.dart';
import 'package:flutter/material.dart';


class PeopleGrid extends StatelessWidget {

  final List<String> _image = ["images/sandeep.jpg","images/aakash.jpg",'images/ashik.jpg',"images/gauravv.png"];
  final List<String> _name = ["Sandeep Maharjan","Aakash Subedi","Ashik Subedi","Gauravv Neupane"];
  final List<String> _role = ["Full Stack Developer","UI/UX Engineer", "Application Developer","JavaScript Developer"];
  final List<String> _subImage = [ "images/sandeep_sub.jpg","images/aakash_sub.jpg","images/ashik_sub.gif","images/ashik_sub.gif"];

    bool _screenType;


  PeopleGrid(this._screenType);

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
