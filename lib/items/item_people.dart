import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';



class ItemPeople extends StatelessWidget {

  String _name, _role, _image, _subImage;
  bool _screenType;


  ItemPeople(this._name, this._role, this._image, this._subImage,this._screenType);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: SizedBox(
        height: _screenType?500:300,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ClipRRect(

                borderRadius:BorderRadius.circular(12),
                child: HoverCrossFadeWidget(
                  duration: Duration(milliseconds: 1000),
                  firstChild:   Container(
                    height: 230,
                    decoration: new BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image:  AssetImage(_image,)
                      ),
                    ),
                  ),
                  secondChild:   Container(
                    height: 230,
                    decoration: new BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
                          image:  AssetImage(_subImage)
                      ),
                    ),
                  ),
                ),

              ),
            ),
             Text(_name,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,fontSize: 16,
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1,
                  fontFamily: 'Permanent'),),
             Text(_role,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,fontSize: 12,
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1,
                  ),),
          ],
        ),
      ),
    );
  }
}
