import 'package:bigfoot/list/PeerGrid.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';


class PeopleMobileScreen extends StatefulWidget {
  const PeopleMobileScreen({Key? key}) : super(key: key);

  @override
  State<PeopleMobileScreen> createState() => _PeopleMobileScreenState();
}

class _PeopleMobileScreenState extends State<PeopleMobileScreen> with TickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    _tabController =  TabController(initialIndex: 0, length: 3, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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

          SizedBox(height: 32,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
            child: Text('Meet the People',
              style: TextStyle(color: Colors.white,fontSize: 24,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Permanent'),),
          ),
          Text("These are the people that make the magic happen.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white,fontSize: 14,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w200,
            ),),

          SizedBox(height: 32,),
          new TabBar(
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: true,
            unselectedLabelColor: Colors.grey,
            indicator: BubbleTabIndicator(
                indicatorHeight: 40.0,
                indicatorColor: Colors.red.shade900,
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
                // Other flags
                indicatorRadius: 4,
                insets: EdgeInsets.all(1),
                padding: EdgeInsets.symmetric(horizontal: 32,vertical: 12)
            ),
            tabs: [
              Tab(text: 'Peer'),
              Tab(text: 'Public'),
              Tab(text: 'All',),

            ],
          ),
          SizedBox(height: 16,),
          PeopleGrid(true)


        ],
      ),
    );
  }
}
