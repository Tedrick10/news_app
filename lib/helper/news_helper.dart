// Dart: Properties
import 'dart:convert';

// Flutter: External Libraries
import 'package:http/http.dart' as http;

// Models
import '../model/article_model.dart';

// NewsHelper Helper Class
class NewsHelper {
  // Normal Properties
  List<ArticleModel> _news = [];

  // Get Methods
  List<ArticleModel> get news {
    return this._news;
  }

  // Normal Methods
  Future<void> getNews() async {
    // Api Properties
    String url =
        'http://newsapi.org/v2/everything?domains=wsj.com&apiKey=9f00fd4f2f5543b089b2a9a46846c400';
    var response = await http.get(url);
    var jsonData = jsonDecode(
      response.body,
    );

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((article) {
        if (article['urlToImage'] != null && article['description'] != null) {
          ArticleModel articleModel = new ArticleModel(
            author: article['author'],
            title: article['title'],
            description: article['description'],
            url: article['url'],
            urlToImage: article['urlToImage'],
            publishedAt: article['publishedAt'],
            content: article['content'],
          );
          this._news.add(articleModel);
        }
      },);
    }
  }
}
