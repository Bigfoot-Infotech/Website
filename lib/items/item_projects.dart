import 'package:flutter/material.dart';

class ItemProjects extends StatelessWidget {

  String _title;
  String _desc;
  String _image;
  String _cover;


  ItemProjects(this._title, this._desc, this._image,this._cover);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 870,
      height: 400,
      child:  Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Column(children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: new BoxDecoration(
                color: const Color(0xff7c94b6),
                image: new DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.8), BlendMode.dstATop),
                    image:  AssetImage(_cover)
                ),
              ),),

            Container(
              width: 250,
              margin: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 16,),
                  Icon(Icons.facebook,color: Colors.blue,),
                  SizedBox(width: 8,),
                  Icon(Icons.android_rounded,color: Colors.green,size: 32,),
                  SizedBox(width: 8,),
                  Icon(Icons.phone_in_talk_sharp,color: Colors.teal,),
                  SizedBox(width: 8,),
                  Icon(Icons.phone_android_sharp,color: Colors.grey,),
                  SizedBox(width: 8,),
                  Icon(Icons.vpn_lock,color: Colors.greenAccent,),
                  SizedBox(width: 16,),

                ],),
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 12,left: 16,right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(_title,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blueGrey,fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontFamily: 'Permanent'),),
                    Expanded(
                      child: Text(_desc,
                        style: TextStyle(color: Colors.black54,fontSize: 14,
                          fontWeight: FontWeight.w200,
                          letterSpacing: 1,
                        ),),
                    ),


                    Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: Center(child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                                  // side: BorderSide(color: Colors.red)
                                )
                            ),
                            elevation: MaterialStateProperty.resolveWith((states) => 8.0),
                            padding: MaterialStateProperty.resolveWith(
                                    (state) => EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
                            backgroundColor: MaterialStateProperty.resolveWith(
                                    (state) => Colors.black)),
                        onPressed: (){

                        },
                        child: Text("BECOME A BETA TESTER",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                      ),),
                    )


                  ],
                ),
              ),
            ),
          ],),
          Positioned(
            top: 225,
            left: 32,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Container(
                height: 150,
                width: 150,
                decoration: new BoxDecoration(
                  color: Colors.transparent,
                  image: new DecorationImage(
                      fit: BoxFit.scaleDown,
                      colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.9), BlendMode.dstATop),
                      image:  AssetImage(_image,)
                  ),
                ),),
            ),
          ),
        ],
      ),
    );
  }
}
