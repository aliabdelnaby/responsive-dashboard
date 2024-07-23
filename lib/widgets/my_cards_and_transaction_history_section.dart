import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_admin_dashboard/widgets/income_section.dart';
import 'package:responsive_admin_dashboard/widgets/my_card_section.dart';
import 'package:responsive_admin_dashboard/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
          IncomeSection(),
        ],
      ),
    );
  }
}
