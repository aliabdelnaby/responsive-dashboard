import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_admin_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_admin_dashboard/widgets/custom_drawer.dart';

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
          child: AllExpensesAndQuickInvoiceSection(),
        ),
      ],
    );
  }
}
