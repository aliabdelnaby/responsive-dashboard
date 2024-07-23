import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/models/transaction_history_model.dart';
import 'package:responsive_admin_dashboard/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionHistoryModel(
      title: "Cash Withdrawal",
      date: " 13 Aug, 2022",
      amount: "\$20,129",
      isWithdrawal: true,
    ),
    TransactionHistoryModel(
      title: "Landing Page Project",
      date: " 13 Aug, 2022",
      amount: "\$2,000",
      isWithdrawal: false,
    ),
    TransactionHistoryModel(
      title: "Juni Mobile App Project",
      date: " 13 Aug, 2022",
      amount: "\$20,129",
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => TransactionHistoryItem(transactionHistoryModel: e))
          .toList(),
    );
  }
}
