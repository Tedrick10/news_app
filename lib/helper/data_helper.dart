// Flutter: Existing Libraries
import 'package:flutter/material.dart';

// Models
import '../model/category_model.dart';

// DataHelper Helper Class
class DataHelper {
  // Normal Properties
  List<CategoryModel> _categoriesList = [
    CategoryModel(
      cateogryName: 'Business',
      imageUrl:
          'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80',
    ),
    CategoryModel(
      cateogryName: 'Entertainment',
      imageUrl:
          'https://images.unsplash.com/photo-1496169514208-d9affacc58ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80',
    ),
    CategoryModel(
      cateogryName: 'General',
      imageUrl:
          'https://images.unsplash.com/photo-1457369804613-52c61a468e7d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
    ),
    CategoryModel(
      cateogryName: 'Health',
      imageUrl:
          'https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80',
    ),
    CategoryModel(
      cateogryName: 'Science',
      imageUrl:
          'https://images.unsplash.com/photo-1517976487492-5750f3195933?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
    ),
    CategoryModel(
      cateogryName: 'Sports',
      imageUrl:
          'https://images.unsplash.com/photo-1552667466-07770ae110d0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
    ),
    CategoryModel(
      cateogryName: 'Technology',
      imageUrl:
          'https://images.unsplash.com/photo-1598331668826-20cecc596b86?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2693&q=80',
    ),
  ];

  // Get Method
  List<CategoryModel> get getCategoriesList {
    return [...this._categoriesList];
  }
}
