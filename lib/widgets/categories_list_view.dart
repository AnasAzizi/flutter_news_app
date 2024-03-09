import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
        image: 'assets/category_banner/health.png', categoryName: 'health'),
    CategoryModel(
        image: 'assets/category_banner/sports.png', categoryName: 'sports'),
    CategoryModel(
        image: 'assets/category_banner/technology.png',
        categoryName: 'technology'),
    CategoryModel(
        image: 'assets/category_banner/business.png', categoryName: 'business'),
    CategoryModel(
        image: 'assets/category_banner/entertainment.png',
        categoryName: 'entertainment'),
    CategoryModel(
        image: 'assets/category_banner/general.png', categoryName: 'general'),
    CategoryModel(
        image: 'assets/category_banner/science.png', categoryName: 'science')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
