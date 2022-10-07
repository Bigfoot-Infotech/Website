import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';


class ItemDestination extends StatelessWidget {

  String _title;
  String _image;


  ItemDestination(this._title, this._image);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: SizedBox(
        height: 405,
        width: 450,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ClipRRect(

                borderRadius:BorderRadius.circular(12),
                child: Stack(
                  alignment: Alignment.center,
                  children: [

                    HoverCrossFadeWidget(
                      duration: Duration(milliseconds: 2000),
                      firstChild:   Container(
                        height: 400,
                        decoration: new BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                              image:  AssetImage(_image,)
                          ),
                        ),
                      ),
                      secondChild:   Container(
                        height: 400,
                        width: 500,
                        decoration: new BoxDecoration(
                          // color: const Color(0xff7c94b6),
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
                              image:  AssetImage(_image,)
                          ),
                        ),
                      ),
                    ),

                    // Container(
                    //   alignment: Alignment.center,
                    //   margin: EdgeInsets.only(left: 8),
                    //   child: Text(
                    //     _title,
                    //     style: TextStyle(
                    //         fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                    //   ),
                    // ),


                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
