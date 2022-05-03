import 'package:bigfoot/screens/people_large.dart';
import 'package:bigfoot/screens/people_mobile.dart';
import 'package:flutter/material.dart';

class PeopleScreen extends StatefulWidget {

  static String routeName = 'people';
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  State<PeopleScreen> createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: SafeArea(
        child: _width>400
            ?PeopleLargeScreen()
            :PeopleMobileScreen(),
      ),
    );
  }
}
