import 'package:bigfoot/screens/project_large.dart';
import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  static String routeName = "projects";


  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.9),
      body: SingleChildScrollView(
        child: SafeArea(
          child: _width>400
              ?ProjectLargeScreen()
              :ProjectLargeScreen(),
        ),
      ),
    );
  }
}
