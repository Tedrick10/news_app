// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Models
import '../model/article_model.dart';

// Helpers
import '../helper/data_helper.dart';
import '../helper/news_helper.dart';

// Widgets
import '../widgets/cateogry_tile_widget.dart';
import '../widgets/blog_tile_widget.dart';

// HomeScreen StatefulWidget Class
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// _HomeScreenState State Class
class _HomeScreenState extends State<HomeScreen> {
  // Normal Properties
  DataHelper _dataHelper;
  NewsHelper _newsHelper;
  List<ArticleModel> _articles = new List<ArticleModel>();
  bool _loading = true;

  // Lifecycle Hooks Methods
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._dataHelper = DataHelper();
    this.getNews();
  }

  // Normal Methods
  void getNews() async {
    this._newsHelper = NewsHelper();
    await this._newsHelper.getNews();
    this._articles = this._newsHelper.news;

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
      ),
      body: (this._loading == true)
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: this._dataHelper.getCategoriesList.length,
                        itemBuilder: (BuildContext ctx, int index) {
                          return CategoryTileWidget(
                            imageUrl: this
                                ._dataHelper
                                .getCategoriesList[index]
                                .imageUrl,
                            categoryName: this
                                ._dataHelper
                                .getCategoriesList[index]
                                .cateogryName,
                          );
                        },
                      ),
                    ),
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
