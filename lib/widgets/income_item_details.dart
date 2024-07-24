import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/models/item_detail_model.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailModel});
  final ItemDetailModel itemDetailModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: itemDetailModel.color,
        ),
      ),
      title: Text(
        itemDetailModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailModel.value,
        style: AppStyles.styleMedium16(context).copyWith(
          color: const Color(0xFF4EB7F2),
        ),
      ),
    );
  }
}
