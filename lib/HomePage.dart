import 'package:flutter/material.dart';
import 'Data.dart';
import 'page/FirstPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  final List<String>listof=["Apple","Fluter","Food","Poduct","Stripe","Food Item","Fluter","Food","Poduct","Stripe","Food Item"];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Material Design App"),
        backgroundColor: Colors.orange,
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
                accountName: new Text("Code With YDC"),
                accountEmail: new Text("ydc@gmail.com"),
              decoration: new BoxDecoration(
                color: Colors.redAccent
              ),
            ),
            
            new ListTile(
              title: new Text("First Page"),
              leading: new Icon(Icons.title,color: Colors.orange,),

              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext c)=>First()));
              },

            ),
            new ListTile(
              title: new Text("Second Page"),
              leading: new Icon(Icons.album,color: Colors.yellow,),

              onTap: (){
                Navigator.of(context).pop();
              },


            ),
            new ListTile(
              title: new Text("Third Page"),
              leading: new Icon(Icons.chat,color: Colors.purple,),

              onTap: (){
                Navigator.of(context).pop();
              },


            ),
            new ListTile(
              title: new Text("Fourth Page"),
              leading: new Icon(Icons.cake,color: Colors.green,),
              onTap: (){
                Navigator.of(context).pop();
              },

            ),
            new ListTile(
              title: new Text("Fifth Page"),
              leading: new Icon(Icons.rounded_corner,color: Colors.red,),
              onTap: (){
                Navigator.of(context).pop();
              },

            ),
            new ListTile(
              title: new Text("Six Page"),
              leading: new Icon(Icons.access_time,color: Colors.yellowAccent,),
              onTap: (){
                Navigator.of(context).pop();
              },

            ),
            new ListTile(
              title: new Text("Seven Page"),
              leading: new Icon(Icons.send,color: Colors.orangeAccent,),
              onTap: (){
                Navigator.of(context).pop();
              },

            ),
            new ListTile(
              title: new Text("Eight Page"),
              leading: new Icon(Icons.chat,color: Colors.purple,),
              onTap: (){
                Navigator.of(context).pop();
              },

            ),
            new Divider(
              height: 10.0,
              color: Colors.purple,
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close,color: Colors.red,),
              onTap: (){
                Navigator.of(context).pop();
              },

            )
            

          ],
        ),
      ),

      body: new ListView.builder(
          itemBuilder: (_,int index)=>Data(this.listof[index]),
          itemCount: this.listof.length,
      ),

    );
  }
}
