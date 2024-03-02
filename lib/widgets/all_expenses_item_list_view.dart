import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatelessWidget {
  const AllExpensesItemsListView({super.key});
  static const items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2023',
        price: r'$20.150'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2023',
        price: r'$20.160'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2023',
        price: r'$20.170'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      //     .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
      //     .toList()
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(
                itemModel: item,
              ),
            ),
          );
        } else {
          return Expanded(child: AllExpensesItem(itemModel: item));
        }
      }).toList(),
    );
  }
}
