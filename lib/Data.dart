import 'package:flutter/material.dart';


class Data extends StatelessWidget {
  
  final String name;
  
  Data(this.name);
  
  @override
  Widget build(BuildContext context) {
    return new Card(
      margin: EdgeInsets.all(10.0),
      elevation: 8.0,
      child: new Container(
        margin: EdgeInsets.all(10.0),
        child: new Row(
          children: <Widget>[

            new CircleAvatar(
              child:new Text(name[0]),
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
            ),
            new Padding(padding: EdgeInsets.all(10.0)),
            new Text(name,style: TextStyle(fontSize: 20.0),)

          ],
        ),
        
      ),
      
    );
  }
}

