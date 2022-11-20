import 'package:app/app/navigator_util.dart';
import 'package:flutter/material.dart';

class SideDrawerComponent extends StatelessWidget with NavigatorMixin {
  final Function(String item) onTapItem;

  const SideDrawerComponent({
    Key? key,
    required this.onTapItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/side_banner.jpeg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("BERANDA"),
              onTap: () {
                onTapItem("BERANDA");
                back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("TENTANG"),
              onTap: () {
                onTapItem("TENTANG");
                back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.menu_book),
              title: const Text("MENU"),
              onTap: () {
                onTapItem("MENU");
                back();
              },
            ),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text("KONTAK"),
              onTap: () {
                onTapItem("KONTAK");
                back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
