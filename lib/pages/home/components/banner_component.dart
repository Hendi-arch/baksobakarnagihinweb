import 'package:app/themes/app_theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BannerComponent extends StatelessWidget {
  final Function(String item) onTapItem;

  const BannerComponent({
    Key? key,
    required this.onTapItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          DecoratedBox(
            position: DecorationPosition.foreground,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
            child: Image.asset(
              "assets/images/home_banner.jpeg",
              fit: BoxFit.cover,
              width: size.width,
              height: size.height,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AutoSizeText(
                    'Selamat Datang',
                    maxLines: 1,
                    minFontSize: 35,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: Colors.white),
                  ),
                  AutoSizeText(
                    'DI BAKSO BAKAR NAGIHIN',
                    maxLines: 3,
                    minFontSize: 35,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      onTapItem("MENU");
                    },
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("MENU BARU"),
                    ),
                  )
                ],
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 70,
                height: 70,
                margin: const EdgeInsets.only(left: 20, top: 20),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/logo.png",
                    ),
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 0.5,
                    color: AppTheme.myPrimarySwatch,
                  ),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: AppTheme.myPrimarySwatch,
                      blurRadius: 8,
                      offset: Offset(0, 3), // Shadow position
                    ),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: ResponsiveVisibility(
                  hiddenWhen: const [Condition.smallerThan(name: TABLET)],
                  replacement: PhysicalModel(
                    color: Colors.white,
                    elevation: 8,
                    shadowColor: AppTheme.myPrimarySwatch,
                    borderRadius: BorderRadius.circular(20),
                    child: IconButton(
                      onPressed: () => Scaffold.of(context).openEndDrawer(),
                      icon: const Icon(Icons.menu),
                      color: AppTheme.myPrimarySwatch,
                    ),
                  ),
                  child: SizedBox(
                    width: size.width * 0.4,
                    height: 100,
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.ROW,
                      rowMainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ResponsiveRowColumnItem(
                          child: TextButton(
                            onPressed: () {
                              onTapItem("BERANDA");
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  AppTheme.myPrimarySwatch),
                            ),
                            child: const Text(
                              "BERANDA",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: TextButton(
                            onPressed: () {
                              onTapItem("TENTANG");
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  AppTheme.myPrimarySwatch),
                            ),
                            child: const Text(
                              "TENTANG",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: TextButton(
                            onPressed: () {
                              onTapItem("MENU");
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  AppTheme.myPrimarySwatch),
                            ),
                            child: const Text(
                              "MENU",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: TextButton(
                            onPressed: () {
                              onTapItem("KONTAK");
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  AppTheme.myPrimarySwatch),
                            ),
                            child: const Text(
                              "KONTAK",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
