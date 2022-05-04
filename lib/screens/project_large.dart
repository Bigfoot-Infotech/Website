import 'package:bigfoot/custom/custom_navbar.dart';
import 'package:bigfoot/list/project_list.dart';
import 'package:bigfoot/screens/people.dart';
import 'package:bigfoot/screens/projects.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class ProjectLargeScreen extends StatefulWidget {


  const ProjectLargeScreen({Key? key}) : super(key: key);

  @override
  State<ProjectLargeScreen> createState() => _ProjectLargeScreenState();
}

class _ProjectLargeScreenState extends State<ProjectLargeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomNavBar(),
        SizedBox(height: 48,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
          child: Text('Review Our Work',
            style: TextStyle(color: Colors.white,fontSize: 42,
                fontWeight: FontWeight.w200,
                fontFamily: 'Permanent'),),
        ),
        Text("These are the projects we are currently working on.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white,fontSize: 18,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w200,
          ),),
        SizedBox(height: 48,),
        Container(
        margin: EdgeInsets.symmetric(horizontal: 32,vertical: 12),
        child: ProjectList(),)
      ],
    );
  }
}
