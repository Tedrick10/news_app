// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// ArticleModel Model Class
class ArticleModel {
  // Final Properties
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  // Constructor
  ArticleModel({
    @required this.author,
    @required this.title,
    @required this.description,
    @required this.url,
    @required this.urlToImage,
    @required this.publishedAt,
    @required this.content,
  });
}
