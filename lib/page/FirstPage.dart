import 'package:flutter/material.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => new _FirstState();
}

class _FirstState extends State<First>with SingleTickerProviderStateMixin {
  
  TabController tabController;
  
  @override
  void initState() {
    tabController=new TabController(length: 4, vsync: this);
    super.initState();
  }
  
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: new AppBar(
        title: new Text("Tabbar View"),
        backgroundColor: Colors.orange,
        bottom: new TabBar(
          controller: tabController,
           indicatorColor: Colors.white,
           indicatorPadding: EdgeInsets.all(10.0),
           tabs: <Widget>[
             
             new Tab(icon: new Icon(Icons.title),),
             new Tab(icon: new Icon(Icons.send),),
             new Tab(icon: new Icon(Icons.album),),
             new Tab(icon: new Icon(Icons.search),)
             
           ],
        ),
      ),
      
    );
  }
}

