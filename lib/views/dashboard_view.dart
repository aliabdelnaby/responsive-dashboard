import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_admin_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_admin_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_admin_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_admin_dashboard/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFFF7F9FA),
      appBar:
          MediaQuery.of(context).size.width < 800 ? buildMobileAppBar() : null,
      drawer:
          MediaQuery.of(context).size.width < 800 ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }

  AppBar buildMobileAppBar() {
    return AppBar(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: const Color(0xFFFAFAFA),
      leading: IconButton(
        onPressed: () {
          _scaffoldKey.currentState!.openDrawer();
        },
        icon: const Icon(
          Icons.menu,
          color: Color(0xff4DB7F2),
        ),
      ),
    );
  }
}
