import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_admin_dashboard/widgets/latest_transaction.dart';
import 'package:responsive_admin_dashboard/widgets/quick_invoice_heade.dart';
import 'package:responsive_admin_dashboard/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(height: 48),
          TitleTextField(
            title: "Customer Name",
            hintText: "Type Customer Name",
          ),
        ],
      ),
    );
  }
}
