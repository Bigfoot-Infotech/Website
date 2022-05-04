import 'package:flutter/material.dart';

class ItemProjects extends StatelessWidget {

  String _title;
  String _desc;
  String _image;


  ItemProjects(this._title, this._desc, this._image);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 800,
      child:  Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ClipRRect(

            borderRadius:BorderRadius.circular(12),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Container(
              height: 300,
              width: 300,
              decoration: new BoxDecoration(
                color: const Color(0xff7c94b6),
                image: new DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                    image:  AssetImage(_image)
                ),
              ),),
                SizedBox(width: 16,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_title,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.orange,fontSize: 24,
                              fontWeight: FontWeight.w200,
                              letterSpacing: 1,
                              fontFamily: 'Permanent'),),
                        Text(_desc,
                          style: TextStyle(color: Colors.black54,fontSize: 14,
                            fontWeight: FontWeight.w200,
                            letterSpacing: 1,
                          ),),
                      ],
                    ),
                      Container(
                        color: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                        margin: EdgeInsets.only(right:16 ,top: 8,bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.facebook,color: Colors.white,),
                            Icon(Icons.phone_android,color: Colors.white,),
                            Icon(Icons.phone_in_talk_sharp,color: Colors.white,),
                            Icon(Icons.phone_android_sharp,color: Colors.white,),
                            Icon(Icons.vpn_lock,color: Colors.white,),
                          ],),
                      )
                  ],),
                )
              ],
            )

        ),
      ),
    );
  }
}
