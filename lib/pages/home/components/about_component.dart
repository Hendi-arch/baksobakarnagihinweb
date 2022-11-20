import 'package:app/themes/app_theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AboutComponent extends StatelessWidget {
  const AboutComponent({Key? key}) : super(key: key);

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
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/about_banner.jpeg",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  AutoSizeText(
                    'Tentang',
                    maxLines: 1,
                    minFontSize: 35,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: AppTheme.myPrimarySwatch),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    child: AutoSizeText(
                      '''Banyak sekali jalan menuju kesuksesan, salah satu diantaranya dengan membuat sebuah cikal-bakal bisnis yang diharapkan mampu mengembangkan daya kreativitas dan inovasi. 
Hal ini sangat membutuhkan keberanian yang luar biasa. Hanya orang bernyali besar-lah yang mampu meng-gelontorkan sejumlah dana demi sebuah harapan yang belum pasti.

Bisnis adalah sebuah pembelajaran, dimana dibutuhkan analisa yang sangat dalam tentang prospek dan kelayakan dalam usaha itu. 
Oleh karena itu, bisnis itu harus dimulai sejak dini sehingga kita memiliki banyak waktu untuk dapat berpikir dan mengolah otak demi kesuksesan usaha tersebut.''',
                      maxLines: 20,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
