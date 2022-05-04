import 'package:flutter/material.dart';

class ItemProjectsRtl extends StatelessWidget {

  String _title;
  String _desc;
  String _image;


  ItemProjectsRtl(this._title, this._desc, this._image);

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
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(_title,
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.blue.shade900,fontSize: 24,
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
                          margin: EdgeInsets.symmetric(horizontal: 4,vertical: 8),
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
                  ),
                ),
                SizedBox(width: 16,),
                Container(
                  height: 300,
                  width: 300,
                  decoration: new BoxDecoration(
                    color: Colors.black,
                    image: new DecorationImage(
                        fit: BoxFit.contain,
                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                        image:  AssetImage(_image)
                    ),
                  ),),
              ],
            )

        ),
      ),
    );
  }
}
