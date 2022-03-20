// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Flutter: External Libraries
import 'package:cached_network_image/cached_network_image.dart';

// Screens
import '../screens/category_screen.dart';

// CategoryTileWidget StatelessWidget Class
class CategoryTileWidget extends StatelessWidget {
  // Final Properties
  final String imageUrl;
  final String categoryName;

  // Constructor
  CategoryTileWidget({
    @required this.imageUrl,
    @required this.categoryName,
  });

  // Build Method
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return CategoryScreen(
                categoryName: this.categoryName,
              );
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 10,
        ),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: this.imageUrl,
                width: 120,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 120,
                height: 60,
                alignment: Alignment.center,
                color: Colors.black26,
                child: Text(
                  this.categoryName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
