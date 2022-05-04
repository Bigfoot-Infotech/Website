import 'package:bigfoot/custom/custom_navbar.dart';
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
          Expanded(
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
          ),

        ],
      ),
    );
  }
}
