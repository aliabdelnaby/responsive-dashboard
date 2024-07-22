import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';
import 'package:responsive_admin_dashboard/views/dots_indicator.dart';
import 'package:responsive_admin_dashboard/widgets/my_cards_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            "My card",
            style: AppStyles.styleSemiBold20,
          ),
        ),
        SizedBox(height: 20),
        MyCardsPageView(),
        SizedBox(height: 19),
        DotsIndicator(),
      ],
    );
  }
}
