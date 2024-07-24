import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/widgets/custom_btn.dart';
import 'package:responsive_admin_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Customer Name",
                hintText: "Type customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: "Customer Email",
                hintText: "Type customer email",
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Item Name",
                hintText: "Type Item name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: "Item mount",
                hintText: "USD",
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomBtn(
                onPressed: () {},
                text: "Add More details",
                backgroundColor: Colors.white,
                textStyle: AppStyles.styleSemiBold18(context).copyWith(
                  color: const Color(0xff4EB7F2),
                ),
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: CustomBtn(
                onPressed: () {},
                text: "Send Money",
                backgroundColor: const Color(0xff4EB7F2),
                textStyle: AppStyles.styleSemiBold18(context),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
