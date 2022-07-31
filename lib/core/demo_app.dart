import 'package:flutter/material.dart';
import 'package:webfeed_plus/domain/rss_feed.dart';
import 'package:http/http.dart' as http;

class RSSDemo extends StatelessWidget {
  const RSSDemo({Key? key, this.feed, this.title}) : super(key: key);

  static const String FEED_URL =
      'https://www.github.com/ashinch/ReadYou/releases.atom';
  final RssFeed? feed;
  final String? title;

  Future<RssFeed?> loadFeed() async {
    try {
      final client = http.Client();
      final response = await client.get(Uri.https(FEED_URL, '/'));
      return RssFeed.parse(response.body);
    } catch (e) {
      print(e);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(title ?? 'App Title'),
        ),
        body: const Center(
          child: Text('Choose or die'),
        ),
      ),
    );
  }
}
