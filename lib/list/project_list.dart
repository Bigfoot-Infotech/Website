import 'package:bigfoot/items/item_people.dart';
import 'package:bigfoot/items/item_projects.dart';
import 'package:bigfoot/items/item_projects_ltr.dart';
import 'package:flutter/material.dart';

class ProjectList extends StatelessWidget {


  var _projects = [
    {
    "name": "Inks Villa",
    "image": "images/ilogo.png",
    "description": "Tattoo artists can showcase their designs under their profile, \n manage their schedule, reach to the organic customer,\n check their balances, post their stories and feed to the users. \n At the same time user shall be able to view the designs \n book appointment, purchase the design, share their stories and \n much more through this multivendor platform."
    },
    {
      "name": "Jump Nations",
      "image": "images/jn_logo.png",
      "description": "Jump Nations is a lifestyle services company focusing \n on sports practices,"
          " learning and networking. It envisions \n developing Nepal to be a sporting nation  "
          "and believes \n in sports being a part  of a lifestyle."
    },
    {
      "name": "Real Estate",
      "image": "images/splash.jpg",
      "description": "Showcase the projects to demonstrate other desirable skills."
          "\nThese projects can help companies understand your passion,"
          "\n initiative, skill, and a love for continuous improvement. "
          "\nThis can include your projects in college, internships, et al."
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              ItemProjects(_projects[0]!['name']!,_projects[0]!['description']!, _projects[0]!['image']!),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your time is limited,\n don't waste it living \nsomeone else's life.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontSize: 24,
                          fontWeight: FontWeight.w200,
                          letterSpacing: 1,
                          fontFamily: 'Permanent'),),
                    Text("                              ___ Steve Jobs",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white,fontSize: 14,
                          fontWeight: FontWeight.w200,
                          letterSpacing: 1,),)
                  ],
                ),
              ),
            ],
          ),
         SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("If my mind can conceive it, "
                        "\nif my heart can believe it \n then I can achieve it.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontSize: 24,
                          fontWeight: FontWeight.w200,
                          letterSpacing: 1,
                          fontFamily: 'Permanent'),),
                    Text("                              ___ Muhammad Ali",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white,fontSize: 14,
                        fontWeight: FontWeight.w200,
                        letterSpacing: 1,),)
                  ],
                ),
              ),
              ItemProjectsRtl(_projects[1]!['name']!,_projects[1]!['description']!, _projects[1]!['image']!),
            ],
          ),
          SizedBox(height: 16,),

          Row(
            children: [
              ItemProjects(_projects[2]!['name']!,_projects[2]!['description']!, _projects[2]!['image']!),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your time is limited,\n don't waste it living \nsomeone else's life.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontSize: 24,
                          fontWeight: FontWeight.w200,
                          letterSpacing: 1,
                          fontFamily: 'Permanent'),),
                    Text("                              ___ Steve Jobs",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white,fontSize: 14,
                        fontWeight: FontWeight.w200,
                        letterSpacing: 1,),)
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
