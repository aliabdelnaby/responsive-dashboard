import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required this.title,
    required this.hintText,
  });

  final String title, hintText;

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Customer Name",
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 12),
        CustomTextField(
          hintText: "Type Customer Name",
        ),
      ],
    );
  }
}
