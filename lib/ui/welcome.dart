import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blue,
      child: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "First Item!!",
              textDirection: TextDirection.ltr,
              style: new TextStyle(color: Colors.black, fontSize: 18.3),
            ),
            new Text(
              "Second Item!!",
              textDirection: TextDirection.ltr,
              style: new TextStyle(color: Colors.white, fontSize: 18.3),
            ),
            new Container(
              color: Colors.black26,
              alignment: Alignment.bottomLeft,
              child: new Text(
                "Third Item!!",
                textDirection: TextDirection.ltr,
                style: new TextStyle(color: Colors.white, fontSize: 18.3),
              ),
            )
          ],
        ),
      ),
    );
  }
}
