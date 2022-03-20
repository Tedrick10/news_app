// Flutter: Existing Libraries
import 'dart:async';

import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

// ArticleScreen StatefulWidget Class
class ArticleScreen extends StatefulWidget {
  // Final Properties
  final String imageUrl;

  // Constructor
  ArticleScreen({
    @required this.imageUrl,
  });

  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

// _ArticleScreenState State Class
class _ArticleScreenState extends State<ArticleScreen> {
  // Build Method
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      hidden: true,
      url: widget.imageUrl,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter',
            ),
            Text(
              'News',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ],
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
