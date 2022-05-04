import 'package:bigfoot/custom/custom_navbar.dart';
import 'package:bigfoot/list/PeerGrid.dart';
import 'package:bigfoot/list/PublicGrid.dart';
import 'package:bigfoot/screens/home.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';


class PeopleLargeScreen extends StatefulWidget {
  const PeopleLargeScreen({Key? key}) : super(key: key);

  @override
  State<PeopleLargeScreen> createState() => _PeopleLargeScreenState();
}

class _PeopleLargeScreenState extends State<PeopleLargeScreen> with TickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    _tabController =  TabController(initialIndex: 0, length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         CustomNavBar(),
          SizedBox(height: 32,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
            child: Text('Meet the People',
              style: TextStyle(color: Colors.white,fontSize: 42,
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Permanent'),),
          ),
          Text("These are the people that make the magic happen.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white,fontSize: 18,
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
          Expanded(
            child: TabBarView(
                controller: _tabController,
                children: [
              PeopleGrid(false),
              PublicGrid(false),
              PeopleGrid(false)
            ]),
          )
        ],
      ),
    );
  }
}
