import 'package:app/themes/app_theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: size.width,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 12,
          shadowColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                AutoSizeText(
                  'Menu',
                  maxLines: 1,
                  minFontSize: 35,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(color: AppTheme.myPrimarySwatch),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/original.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1.0,
                              color: AppTheme.myPrimarySwatch,
                            ),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: AppTheme.myPrimarySwatch,
                                blurRadius: 8,
                                offset: Offset(0, 0), // Shadow position
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),
                        SizedBox(
                          width: size.width * 0.3,
                          child: Text(
                            "Bakso Bakar Barbeque",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.w900),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "IDR3K",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w900,
                            color: AppTheme.myPrimarySwatch,
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Container(
                  color: Colors.black,
                  width: size.width,
                  height: 2,
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                "assets/images/barbeque.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1.0,
                              color: AppTheme.myPrimarySwatch,
                            ),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: AppTheme.myPrimarySwatch,
                                blurRadius: 8,
                                offset: Offset(0, 0), // Shadow position
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),
                        SizedBox(
                          width: size.width * 0.3,
                          child: Text(
                            "Bakso Bakar Original",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.w900),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "IDR3K",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w900,
                            color: AppTheme.myPrimarySwatch,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
