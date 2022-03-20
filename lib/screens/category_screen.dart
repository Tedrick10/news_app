// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Models
import '../model/article_model.dart';

// Helpers
import '../helper/category_news_helper.dart';

// Widgets
import '../widgets/blog_tile_widget.dart';

// CategoryScreen StatefulWidget Class
class CategoryScreen extends StatefulWidget {
  // Final Properties
  final String categoryName;

  // Constructor
  CategoryScreen({
    @required this.categoryName,
  });

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

// _CategoryScreenState State Class
class _CategoryScreenState extends State<CategoryScreen> {
  // Normal Properties
  List<ArticleModel> _articles;
  bool _loading = true;

  // Lifecycle Hooks Methods
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getCategoryNews();
  }

  // Normal Methods
  void getCategoryNews() async {
    CategoryNewsHelper categoryNewsHelper = new CategoryNewsHelper();
    await categoryNewsHelper.getNews(widget.categoryName);
    this._articles = categoryNewsHelper.news;
    setState(() {
      this._loading = false;
    });
  }

  // Build Method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: (this._loading == true)
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  children: [
                    Container(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: this._articles.length,
                        itemBuilder: (BuildContext context, int index) {
                          return BlogTileWidget(
                            title: this._articles[index].title,
                            description: this._articles[index].description,
                            imageUrl: this._articles[index].urlToImage,
                            url: this._articles[index].url,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
