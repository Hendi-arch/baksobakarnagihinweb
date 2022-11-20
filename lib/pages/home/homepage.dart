import 'package:app/app/navigator_util.dart';
import 'package:app/pages/home/components/about_component.dart';
import 'package:app/pages/home/components/banner_component.dart';
import 'package:app/pages/home/components/contact_component.dart';
import 'package:app/pages/home/components/copyright_component.dart';
import 'package:app/pages/home/components/menu_component.dart';
import 'package:app/pages/home/components/side_drawer_component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with NavigatorMixin {
  bool isEndDrawerOpen = false;

  final bannerKey = GlobalKey();
  final aboutKey = GlobalKey();
  final menuKey = GlobalKey();
  final contactKey = GlobalKey();

  final scrollController = ScrollController();

  void ensureVisible(GlobalKey key) {
    scrollController.position.ensureVisible(
      key.currentContext!.findRenderObject()!,
      duration: const Duration(seconds: 1),
    );
  }

  void onTapItem(String item) {
    if (item == "BERANDA") {
      ensureVisible(bannerKey);
    } else if (item == "TENTANG") {
      ensureVisible(aboutKey);
    } else if (item == "MENU") {
      ensureVisible(menuKey);
    } else if (item == "KONTAK") {
      ensureVisible(contactKey);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (isEndDrawerOpen && size.width >= 800) {
      Future.delayed(Duration.zero, () => back());
    }

    return Scaffold(
      onEndDrawerChanged: (bool value) => isEndDrawerOpen = value,
      endDrawer: SideDrawerComponent(onTapItem: onTapItem),
      body: SingleChildScrollView(
        controller: scrollController,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            BannerComponent(key: bannerKey, onTapItem: onTapItem),
            AboutComponent(key: aboutKey),
            MenuComponent(key: menuKey),
            ContactComponent(key: contactKey),
            const CopyrightComponent(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ensureVisible(bannerKey);
        },
        child: const Icon(Icons.arrow_upward_outlined),
      ),
    );
  }
}
