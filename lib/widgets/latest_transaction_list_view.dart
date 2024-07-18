import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/models/user_info_model.dart';
import 'package:responsive_admin_dashboard/core/utils/app_images.dart';
import 'package:responsive_admin_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: "Josua Nunito",
      subTitle: "JoshNunito@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return UserInfoListTile(
          userInfoModel: UserInfoModel(
            image: items[index].image,
            title: items[index].title,
            subTitle: items[index].subTitle,
          ),
        );
      },
    );
  }
}
