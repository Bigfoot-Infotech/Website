
import 'package:bigfoot/screens/home_large.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home_mobile.dart';

class HomeScreen extends StatefulWidget {

  static String routeName = 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton:Container(
        margin: EdgeInsets.all(24),
        child:  FloatingActionButton(
            child: Icon(Icons.phone_in_talk_sharp,color: Colors.black,),
          backgroundColor: Colors.white, onPressed: () { _makePhoneCall("9864396280"); },
          
      )) ,
      backgroundColor: Colors.black.withOpacity(0.9),
      body: SafeArea(
        child: _width>400
            ?HomeLargeScreen()
            :HomeMobileScreen(),
      ),
    );
  }
}
