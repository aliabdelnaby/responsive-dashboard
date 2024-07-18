import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/models/all_expenses_item_model.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(0xffF1F1F1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(height: 16),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            imageBackground: Colors.white.withOpacity(0.1),
            imageColor: Colors.white,
          ),
          const SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14.copyWith(
              color: const Color(0xffFAFAFA),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
