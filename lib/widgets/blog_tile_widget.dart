// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:cached_network_image/cached_network_image.dart';

// Screens
import '../screens/article_screen.dart';

// BlogTileWidget StatelessWidget Class
class BlogTileWidget extends StatelessWidget {
  // Final Properties
  final String imageUrl;
  final String title;
  final String description;
  final String url;

  // Constructor
  BlogTileWidget({
    @required this.title,
    @required this.description,
    @required this.imageUrl,
    @required this.url,
  });

  // Build Method
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext ctx) {
              return ArticleScreen(
                imageUrl: this.url,
              );
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                this.imageUrl,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              this.title,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              this.description,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
