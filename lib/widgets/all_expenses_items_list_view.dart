import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/models/all_expenses_item_model.dart';
import 'package:responsive_admin_dashboard/core/utils/app_images.dart';
import 'package:responsive_admin_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});
  static const items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: "Blance",
      date: "April 2022",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: r"$20,129",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          // items.map((e) => AllExpensesItem(allExpensesItemModel: e)).toList(),
          items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(
                allExpensesItemModel: item,
              ),
            ),
          );
        } else {
          return Expanded(
            child: AllExpensesItem(
              allExpensesItemModel: item,
            ),
          );
        }
      }).toList(),
    );
  }
}
