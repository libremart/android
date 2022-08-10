import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webfeed_plus/webfeed_plus.dart';

class RSSDemo extends StatefulWidget {
  const RSSDemo({Key? key}) : super(key: key);

  @override
  State<RSSDemo> createState() => _RSSDemoState();
}

class _RSSDemoState extends State<RSSDemo> {
  static const String FEED_URL =
      'https://www.github.com/ashinch/ReadYou/releases.atom';
  // "https://www.nasa.gov/rss/dyn/lg_image_of_the_day.rss";
  AtomFeed? _feed;
  String? _title;
  static String loadingFeedMsg = 'Loading...';
  static String loadingFeedErrorMsg = 'Error Loading';

  updateTitle(title) {
    setState(() {
      _title = title;
    });
  }

  updateFeed(feed) {
    setState(() {
      _feed = feed;
    });
  }

  load() async {
    updateTitle(loadingFeedMsg);
    loadFeed().then((result) {
      if (result == null || result.toString().isEmpty) {
        updateTitle(loadingFeedErrorMsg);
        return;
      } else {
        updateFeed(result);
        updateTitle(_feed?.title);
      }
    });
  }

  Future<AtomFeed?> loadFeed() async {
    try {
      final client = http.Client();
      // final response = await client.get(Uri.https(FEED_URL, '/'));
      final response = await client.get(Uri.parse(FEED_URL));
      print(response.body);
      return AtomFeed.parse(response.body);
    } catch (e) {
      print(e);
    }
    return null;
  }

  @override
  void initState() {
    updateTitle('Start');
    load();
    super.initState();
  }

  title(title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  subTitle(subTitle) {
    return Text(
      subTitle,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w100,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  thumbnail() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title ?? 'App Title'),
        ),
        body: Center(
            child: Column(
          children: [
            title(_feed?.items?[1].links?[0].href.toString()),
          ],
        )),
      ),
    );
  }
}
