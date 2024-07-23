import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/models/item_detail_model.dart';
import 'package:responsive_admin_dashboard/widgets/income_item_details.dart';

class IncomDetails extends StatelessWidget {
  const IncomDetails({super.key});
  static const items = [
    ItemDetailModel(
      title: 'Design services',
      value: '40%',
      color: Color(0xff20BC7E),
    ),
    ItemDetailModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xff4DB7F2),
    ),
    ItemDetailModel(
      title: 'Product royalty',
      value: '20%',
      color: Color(0xff064060),
    ),
    ItemDetailModel(
      title: 'other',
      value: '22%',
      color: Color(0xFFE2DECD),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDetails(itemDetailModel: e)).toList(),
    );
  }
}
