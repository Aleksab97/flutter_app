import 'package:flutter/material.dart';
import './ui/welcome.dart';
import './ui/topBar.dart';

void main(){
  runApp(new MaterialApp(
    title: "Welcome App",
    //home:new Welcome(),
    home: new TopBar(),
  ));
}


