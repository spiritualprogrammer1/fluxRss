import 'package:flutter/material.dart';
import 'dart:async';
import '../model/parser.dart';
import'package:webfeed/webfeed.dart';
class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RssFeed feed ;
  @override
  /****permet de initialiser le projet****/
   void initState()
  {
    super.initState();
      parse();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  Future<Null> parse() async {
    RssFeed recus = await Parser().changeRss();
    if(recus != null)
      {
        setState(() {
          feed = recus;
          print(feed.items);
        });
      }
      else {

    }
  }
}