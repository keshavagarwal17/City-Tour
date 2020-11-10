import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

_gpayLink() async {
    var url ="https://gpay.app.goo.gl/";
    var url1="";
    var list = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    for(int i=0;i<1000;i++)
    {
      var rng = new Random();
      url1 = url;
      for(int j=0;j<6;j++)
      {
        int index = rng.nextInt(62);
        url1+=list[index];
      }
      if (await canLaunch(url1)) {
          launch(url1);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(title: Text("Gpay Hack"),),
        body:Center(
          child: Container(
            child:RaisedButton(
              onPressed: _gpayLink,
              child: Text("open link"),
            )
          ),
        )
      )
    );
  }
}