import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({Key? key, required this.tabController}) : super(key: key);
  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((Category) {
      return Tab(
        text: Category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        labelColor: Colors.blue, // Adjust this color as needed
        tabs:_buildCategoryTabs()
      ),
    );
  }
}
