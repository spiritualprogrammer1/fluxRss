import'package:webfeed/webfeed.dart';
import 'package:http/http.dart';
import 'dart:async';

class Parser {

  final url="http://www.france24.com/fr/actualites/rss";
  Future changeRss() async {
  final response = await get(url);
  if(response.statusCode == 200)
    {
      final feed = RssFeed.parse(response.body);
      return feed;
    }
    else {
   print("error: ${response.statusCode}");
  }
  }
}