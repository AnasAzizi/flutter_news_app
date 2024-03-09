import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: category.categoryName);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 9.0),
        child: Container(
          width: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(category.image),
                  opacity: 0.7),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              category.categoryName,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                        color: Colors.black, // Choose the color of the shadow
                        blurRadius:
                            2.0, // Adjust the blur radius for the shadow effect
                        offset: Offset(3, 2))
                  ],
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
