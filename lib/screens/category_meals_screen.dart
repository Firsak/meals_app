import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';

import '/dummy_data.dart';

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
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryid);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}