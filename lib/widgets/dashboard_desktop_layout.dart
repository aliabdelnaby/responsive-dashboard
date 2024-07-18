import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_admin_dashboard/widgets/all_expenses.dart';
import 'package:responsive_admin_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/widgets/quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(height: 24),
              QuickInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
