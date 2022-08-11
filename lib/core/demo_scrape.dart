import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

class ScrapeDemo extends StatefulWidget {
  const ScrapeDemo({Key? key}) : super(key: key);

  @override
  State<ScrapeDemo> createState() => _ScrapeDemoState();
}

class _ScrapeDemoState extends State<ScrapeDemo> {
  List<Article> articles = [];

  @override
  void initState() {
    getWebsiteData();
    super.initState();
  }

  getWebsiteData() async {
    final url = Uri.parse('https://www.amazon.com/s?k=iphone');
    final response = await http.get(url);
    dom.Document html = dom.Document.html(response.body);

    final titles = html
        .querySelectorAll('h2 > a > span')
        .map((e) => e.innerHtml.trim())
        .toList();

    final urls = html
        .querySelectorAll('h2 > a')
        .map((e) => 'https://www.amazon.com${e.attributes['href']}')
        .toList();

    final urlImage = html
        .querySelectorAll('span > a > div > img')
        .map((e) => e.attributes['src']!)
        .toList();

    setState(() {
      articles = List.generate(
        titles.length,
        (index) => Article(
          title: titles[index],
          url: urls[index],
          urlImage: urlImage[index],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Scrape Demo'),
          ),
          body: ListView.builder(itemBuilder: ((context, index) {
            final article = articles[index];
            return ListTile(
              title: Text(article.title),
              subtitle: Text(article.url),
              leading: Image.network(
                article.urlImage,
                width: 50,
                fit: BoxFit.fitHeight,
              ),
            );
          }))),
    );
  }
}

class Article {
  final String url;
  final String title;
  final String urlImage;

  const Article({
    required this.url,
    required this.title,
    required this.urlImage,
  });
}
