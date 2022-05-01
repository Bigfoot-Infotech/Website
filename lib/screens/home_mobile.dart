import 'package:flutter/material.dart';


class HomeMobileScreen extends StatelessWidget {
  const HomeMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 8,top: 8,right: 8),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.menu,color: Colors.white,),
                SizedBox(width:8 ,),
                Text('bigFoot',
                  style: TextStyle(color: Colors.white,fontSize: 24,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 1,
                      fontFamily: 'Permanent'),),

              ],
            ),
          ),
          SizedBox(height: 8,),
          Card(
            child: Container(
              padding:EdgeInsets.all(12),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('People',
                        style: TextStyle(color: Colors.black,fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,)),
                    SizedBox(width: 8,),
                    VerticalDivider(),
                    SizedBox(width: 8,),
                    Text('Projects',
                        style: TextStyle(color: Colors.black,fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,)),
                    SizedBox(width: 8,),
                    VerticalDivider(),
                    SizedBox(width: 8,),
                    Text('Podcast',
                        style: TextStyle(color: Colors.black,fontSize: 12,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,))
                  ],
                ),
              ),
            ),),
          Expanded(
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                    child: Text('Tools to keep your \n creativity moving',
                      style: TextStyle(color: Colors.white,fontSize: 32,
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Permanent'),),
                  ),
                  SizedBox(height: 16,),
                  Text("Simplify your workflow so you can focus on what "
                      "\n matters most—creating. Whether you’re initiating a startup or"
                      " \n validating an idea. Let us to the dirty work. "
                      "\n  Keep your creativity moving...",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 16,
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
