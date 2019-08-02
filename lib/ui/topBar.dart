import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class TopBar extends StatelessWidget {
  void _onPress() {
    print("Search!");
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new prefix0.AppBar(
          backgroundColor: Colors.blue,
          title: new Text("Welcome To Tob Bar"),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.home),
                onPressed: () => debugPrint("Home is pressed!")),
            new IconButton(
                icon: new Icon(Icons.search), onPressed: _onPress)
          ]),
      backgroundColor: Colors.grey.shade400,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child: new CustomButtom(),
            ),
          ],

        ),

      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: ()=>debugPrint("PRESSED"),
        backgroundColor: Colors.lightBlueAccent,
        tooltip: "Going Up",
        child: new Icon(Icons.arrow_upward),

      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(icon: new Icon(Icons.library_add),title: new Text("Add Library")),
          new BottomNavigationBarItem(icon: new Icon(Icons.laptop_chromebook),title: new Text("Laptop")),
          new BottomNavigationBarItem(icon: new Icon(Icons.highlight),title: new Text("Highlight")),
        ],
        onTap: (int i)=>debugPrint("Bottton $i " + "is touched"),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (){
        final snackBar = new SnackBar(content: new Text("Yupi is pressed!"),);
        Scaffold.of(context).showSnackBar(snackBar);
      },
    child: new Container(
      padding: new EdgeInsets.all(18.0),
      decoration: new BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: new BorderRadius.circular(5.5),
      ),
      child: new Text("First Buttom"),
    ),

    );
  }

}
