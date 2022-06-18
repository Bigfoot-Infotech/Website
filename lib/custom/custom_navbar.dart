import 'package:bigfoot/screens/home.dart';
import 'package:bigfoot/screens/people.dart';
import 'package:bigfoot/screens/projects.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 24,top: 24,right: 24),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
            child: Text('bigFoot',
              style: TextStyle(color: Colors.white,fontSize: 32,
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1,
                  fontFamily: 'Permanent'),),
          ),
          Card(
            child: Container(
              padding:EdgeInsets.all(12),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(PeopleScreen.routeName);
                      },
                      child: Text('People',
                          style: TextStyle(color: Colors.black,fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,)),
                    ),
                    SizedBox(width: 8,),
                    VerticalDivider(),
                    SizedBox(width: 8,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(ProjectScreen.routeName);
                      },
                      child: Text('Projects',
                          style: TextStyle(color: Colors.black,fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,)),
                    ),
                    SizedBox(width: 8,),
                    VerticalDivider(),
                    SizedBox(width: 8,),
                    Text('Programs',
                        style: TextStyle(color: Colors.black,fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,))
                  ],
                ),
              ),
            ),)
        ],
      ),
    );
  }
}
