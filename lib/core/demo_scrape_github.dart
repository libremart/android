import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

class ScrapeDemoGit extends StatefulWidget {
  const ScrapeDemoGit({Key? key}) : super(key: key);

  @override
  State<ScrapeDemoGit> createState() => _ScrapeDemoGitState();
}

class _ScrapeDemoGitState extends State<ScrapeDemoGit> {
  List<Article> articles = [];

  @override
  void initState() {
    getWebsiteData();
    super.initState();
  }

  getWebsiteData() async {
    final url =
        Uri.parse('https://github.com/Ashinch/ReadYou/releases/tag/0.8.3');
    final response = await http.get(url);
    dom.Document html = dom.Document.html(response.body);

    final titles = html
        .querySelectorAll(
            'div.d-flex.flex-justify-start.col-12.col-lg-9 > a > span')
        .map((e) => e.innerHtml.trim())
        .toList();

    final urls = html
        .querySelectorAll('div.d-flex.flex-justify-start.col-12.col-lg-9 > a')
        .map((e) => '${e.attributes['href']}')
        .toList();

    // final urlImage = html
    //     .querySelectorAll('span > a > div > img')
    //     .map((e) => e.attributes['src']!)
    //     .toList();

    setState(() {
      articles = List.generate(
        titles.length,
        (index) => Article(
          title: titles[index],
          url: urls[index],
          urlImage: 'https://avatars.githubusercontent.com/u/36381315?s=64&v=4',
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
