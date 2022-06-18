import 'package:bigfoot/custom/custom_navbar.dart';
import 'package:bigfoot/list/destination_grid.dart';
import 'package:bigfoot/screens/people.dart';
import 'package:bigfoot/screens/projects.dart';
import 'package:flutter/material.dart';


class HomeLargeScreen extends StatelessWidget {

  const HomeLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         CustomNavBar(),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: 64,),
                Text('Tools to keep your \n creativity moving',
                  style: TextStyle(color: Colors.white,fontSize: 64,
                      fontWeight: FontWeight.w200,
                      fontFamily: 'Permanent'),),
                SizedBox(height: 16,),
                Text("Simplify your workflow so you can focus on what "
                    "\n matters most—creating. Whether you’re initiating a startup or"
                    " \n validating an idea. Let us do the dirty work. "
                    "\n  Keep your creativity moving...",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,fontSize: 27,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w200,
                  ),),
                SizedBox(height: 24,),
                Container(
                  padding: EdgeInsets.only(left: 24, right: 24, top: 24),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                              // side: BorderSide(color: Colors.red)
                            )
                        ),
                        elevation: MaterialStateProperty.resolveWith((states) => 12.0),
                        padding: MaterialStateProperty.resolveWith(
                                (state) => EdgeInsets.symmetric(horizontal: 24, vertical: 24)),
                        backgroundColor: MaterialStateProperty.resolveWith(
                                (state) => Colors.white)),
                    child: Text('Launching soon',
                        style: TextStyle(fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        )),

                    onPressed: () {


                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 64,),
          Center(
            child: Text('What do we do?',
              style: TextStyle(color: Colors.white,fontSize: 32,
                fontWeight: FontWeight.bold,
              ),),
          ),
          Center(
            child: Text('We are here to guide you through the journey from requirement analysis to the product launch on the market.',
              style: TextStyle(color: Colors.white,fontSize: 16,
                fontWeight: FontWeight.normal,
              ),),
          ),
          SizedBox(height: 32,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 90),
              child: ServicesGrid()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: EdgeInsets.only(top: 16, left: 90),
                  color: Colors.black,
                  child: Container(
                    height: 400,
                    margin: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
                    color: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mark_email_read,color: Colors.white,size: 48,),
                        SizedBox(height: 12,),
                        Text('Subscribe to \nour news letter',
                          style: TextStyle(color: Colors.white,fontSize: 60,
                              fontWeight: FontWeight.bold,
                             ),),
                        SizedBox(height: 12,),
                        Text('Get our latest news, learn about upcoming events, and access perks and discounts for your startup.',
                          style: TextStyle(color: Colors.white,fontSize: 22,
                            fontWeight: FontWeight.normal,
                          ),),
                        SizedBox(height: 24,),
                        Row(children: [
                          Icon(Icons.subdirectory_arrow_right_rounded,color: Colors.white,),
                          Text('Subscribe',
                            style: TextStyle(color: Colors.white,fontSize: 24,
                              fontWeight: FontWeight.bold
                            ),),
                        ],)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 48,),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: EdgeInsets.only(top: 16, right: 90),
                  color: Colors.grey.shade300,
                  child: Container(
                    height: 400,
                    margin: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
                    padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mark_email_read,color: Colors.black,size: 48,),
                        SizedBox(height: 12,),
                        Text('Partner\nwith us',
                          style: TextStyle(color: Colors.black,fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),),
                        SizedBox(height: 12,),
                        Text('We are proud to work with brands who are helping startups.',
                          style: TextStyle(color: Colors.black,fontSize: 22,
                            fontWeight: FontWeight.normal,
                          ),),
                        SizedBox(height: 24,),
                        Row(children: [
                          Icon(Icons.subdirectory_arrow_right_rounded,color: Colors.black,),
                          Text('Learn More',
                            style: TextStyle(color: Colors.black,fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),),
                        ],)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 32,),


        ],
      ),
    );
  }
}
