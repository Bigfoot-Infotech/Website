import 'package:bigfoot/items/item_people.dart';
import 'package:bigfoot/items/item_projects.dart';
import 'package:bigfoot/items/item_projects_ltr.dart';
import 'package:flutter/material.dart';

class ProjectList extends StatelessWidget {


  var _projects = [
    {
    "name": "Inks Villa",
    "image": "images/ilogo.png",
      "cover":"images/iv_cover.jpg",
    "description": "Tattoo artists can showcase their designs under their profile, manage their schedule, reach to the organic customer, check their balances, post their stories and feed to the users.  At the same time user shall be able to view the designs  book appointment, purchase the design, share their stories and much more through this multivendor platform."
        "\n \nThis app is currently on the beta stage and also on the verge of entering into the market. This has been currently being sent to various artist within Nepal and beyond who are also providing with valuable feedback as well as insights."
    },
    {
      "name": "Samadrishti Real Estate",
      "cover":"images/sd_cover.png",
      "image": "images/sd_logo.jpg",
      "description": "Showcase the projects to demonstrate other desirable skills."
          "These projects can help companies understand your passion,"
          " initiative, skill, and a love for continuous improvement. "
          "This can include your projects in college, internships, et al."
    },
    {
      "name": "Jump Nations",
      "image": "images/jn_logo.png",
      "cover":"images/jn_cover.jpg",
      "description": "Jump Nations is a lifestyle services company focusing \n on sports practices,"
          " learning and networking. It envisions \n developing Nepal to be a sporting nation  "
          "and believes \n in sports being a part  of a lifestyle."
    },

  ];


  @override
  Widget build(BuildContext context) {

    return Container(
      height: 800,
      child: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: _projects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 32,
              mainAxisSpacing: 32),
          itemBuilder: (context, index) =>  ItemProjects(
              _projects[index]!["name"]!,
            _projects[index]!["description"]!,
            _projects[index]!["image"]!,
            _projects[index]!["cover"]!,
          )

      ),
    );
    // return Container(
    //   width: double.infinity,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //
    //           ItemProjects(_projects[0]!['name']!,_projects[0]!['description']!, _projects[0]!['image']!,_projects[0]!['cover']!),
    //           Expanded(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text("Your time is limited,\n don't waste it living \nsomeone else's life.",
    //                   textAlign: TextAlign.center,
    //                   style: TextStyle(color: Colors.white,fontSize: 24,
    //                       fontWeight: FontWeight.w200,
    //                       letterSpacing: 1,
    //                       fontFamily: 'Permanent'),),
    //                 Text("                              ___ Steve Jobs",
    //                   textAlign: TextAlign.right,
    //                   style: TextStyle(color: Colors.white,fontSize: 14,
    //                       fontWeight: FontWeight.w200,
    //                       letterSpacing: 1,),)
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //      SizedBox(height: 16,),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Expanded(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text("If my mind can conceive it, "
    //                     "\nif my heart can believe it \n then I can achieve it.",
    //                   textAlign: TextAlign.center,
    //                   style: TextStyle(color: Colors.white,fontSize: 24,
    //                       fontWeight: FontWeight.w200,
    //                       letterSpacing: 1,
    //                       fontFamily: 'Permanent'),),
    //                 Text("                              ___ Muhammad Ali",
    //                   textAlign: TextAlign.right,
    //                   style: TextStyle(color: Colors.white,fontSize: 14,
    //                     fontWeight: FontWeight.w200,
    //                     letterSpacing: 1,),)
    //               ],
    //             ),
    //           ),
    //           ItemProjectsRtl(_projects[1]!['name']!,_projects[1]!['description']!, _projects[1]!['image']!),
    //         ],
    //       ),
    //       SizedBox(height: 16,),
    //
    //       Row(
    //         children: [
    //           ItemProjects(_projects[2]!['name']!,_projects[2]!['description']!, _projects[2]!['image']!,_projects[2]!['cover']!),
    //           Expanded(
    //             child: Column(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text("Your time is limited,\n don't waste it living \nsomeone else's life.",
    //                   textAlign: TextAlign.center,
    //                   style: TextStyle(color: Colors.white,fontSize: 24,
    //                       fontWeight: FontWeight.w200,
    //                       letterSpacing: 1,
    //                       fontFamily: 'Permanent'),),
    //                 Text("                              ___ Steve Jobs",
    //                   textAlign: TextAlign.right,
    //                   style: TextStyle(color: Colors.white,fontSize: 14,
    //                     fontWeight: FontWeight.w200,
    //                     letterSpacing: 1,),)
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //
    //     ],
    //   ),
    // );
  }
}
