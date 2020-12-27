import 'package:flutter/material.dart';

class TabBarKullanimi extends StatefulWidget {
  @override
  _TabBarKullanimiState createState() => _TabBarKullanimiState();
}

class _TabBarKullanimiState extends State<TabBarKullanimi>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Bar"),
        bottom: tabBarim(),
      ),
      body: TabBarView(controller: tabController,children: [
        Container(color: Colors.red, child: Center(child: Text("Tab 1", style: Theme.of(context).textTheme.headline3,)),),
        Container(color: Colors.green, child: Center(child: Text("Tab 2",style: Theme.of(context).textTheme.headline3)),),
        Container(color: Colors.blue, child: Center(child: Text("Tab 3",style: Theme.of(context).textTheme.headline3)),),
      ] ),
    );
  }

  TabBar tabBarim() {
    return TabBar(controller: tabController, tabs: [
      Tab(
        icon: Icon(Icons.assistant_navigation),
      ),
      Tab(
        icon: Icon(Icons.star),
      ),
      Tab(
        icon: Icon(Icons.laptop),
      ),
    ]);
  }
}
