import 'package:flutter/material.dart';
import 'package:smartglobus/settings/appTheme.dart';
import 'package:smartglobus/utils/utils.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  buildHeader(BuildContext context) {
    return Container(
      color: AppTheme.darkBlueColor,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      child: Column(
        children: [
          const SizedBox(height: 12),
          const CircleAvatar(
            radius: 64,
            backgroundImage: AssetImage("assets/images/ihvola.jpg"),
          ),
          const SizedBox(height: 12),
          Text(
            "Ihvola Temirova".toUpperCase(),
            style: TextStyle(
              fontSize: 20,
              color: AppTheme.whiteColor,
              fontFamily: AppTheme.roboto,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "Smart Globus\nLoyihasi Asoschisi",
            style: TextStyle(
              fontSize: 18,
              color: AppTheme.whiteColor,
              fontFamily: AppTheme.roboto,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 12),

        ],
      ),
    );
  }

  buildMenuItems(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("Home"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
