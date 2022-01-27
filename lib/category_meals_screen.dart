import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  const CategoryMealScreen({Key? key}) : super(key: key);

  // const CategoryMealScreen(this.categoryId, this.categoryTitle, {Key? key})
  //   : super(key: key);

  // final String categoryId;
  // final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'] as String;
    final categoryid = routeArgs['id'] as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Container(
        child: const Text('The Recipes For The Category!'),
      ),
    );
  }
}
