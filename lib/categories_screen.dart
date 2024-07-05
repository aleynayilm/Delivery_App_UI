import 'package:delivery_app_ui/product/language/color/color_items.dart';
import 'package:delivery_app_ui/product/language/language_items.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorss.appBarBackgroundColor,
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const SplashScreen(),
            //     ));
          },
          icon: const Icon(Icons.chevron_left_outlined),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: _Padding().pagePadding),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                CategoriesLanguageItems().title,
                style: TextStyle(
                    color: Colorss.titleColor,
                    fontSize: _FontSize().titleFontSize),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: _Padding().pagePadding, top: _Padding().textFieldPadding),
            child: SizedBox(
              width: _Size().textFieldWidth,
              height: _Size().textFieldHeight,
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    fillColor: Colorss.textField,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(_Radius().textFieldRadius))),
                    prefixIcon: const Icon(Icons.search_outlined),
                    labelText: CategoriesLanguageItems().textField,
                    labelStyle: TextStyle(color: Colorss.textFieldText)),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: _Padding().pagePadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: CardComponent(
                            image: Image.asset(
                              'assets/card1.png',
                            ),
                            text: CategoriesLanguageItems().textCard1,
                            textSecondary:
                                CategoriesLanguageItems().cardNumber1,
                          )),
                      InkWell(
                        onTap: () {},
                        child: CardComponent(
                            image: Image.asset(
                              'assets/card2.png',
                            ),
                            text: CategoriesLanguageItems().textCard2,
                            textSecondary:
                                CategoriesLanguageItems().cardNumber2),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: _Padding().pagePadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: CardComponent(
                              image: Image.asset('assets/card3.png'),
                              text: CategoriesLanguageItems().textCard3,
                              textSecondary:
                                  CategoriesLanguageItems().cardNumber3)),
                      InkWell(
                          onTap: () {},
                          child: CardComponent(
                              image: Image.asset('assets/card4.png'),
                              text: CategoriesLanguageItems().textCard4,
                              textSecondary:
                                  CategoriesLanguageItems().cardNumber4))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: _Padding().pagePadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: CardComponent(
                              image: Image.asset('assets/card5.png'),
                              text: CategoriesLanguageItems().textCard5,
                              textSecondary:
                                  CategoriesLanguageItems().cardNumber5)),
                      InkWell(
                          onTap: () {},
                          child: CardComponent(
                              image: Image.asset('assets/card6.png'),
                              text: CategoriesLanguageItems().textCard6,
                              textSecondary:
                                  CategoriesLanguageItems().cardNumber6))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
        backgroundColor: Colorss.bottomNavigationBarColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.apps_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: ''),
        ]);
  }
}

class CardComponent extends StatelessWidget {
  const CardComponent(
      {super.key,
      required this.image,
      required this.text,
      required this.textSecondary});
  final Image image;
  final String text;
  final String textSecondary;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _Size().cardHeight,
      width: _Size().cardWidth,
      child: Card(
        color: Colorss.card,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_Radius().cardRadius),
            side: BorderSide(
                color: Colorss.cardBorder, width: _Size().cardWidth)),
        child: Column(children: [
          image,
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              text,
              style: TextStyle(
                  color: Colorss.cardTextColor,
                  fontSize: _FontSize().cardPrimaryText),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                textSecondary,
                style: TextStyle(
                    color: Colorss.cardSecondaryTextColor,
                    fontSize: _FontSize().cardSecondaryText),
              ))
        ]),
      ),
    );
  }
}

class _FontSize {
  final double titleFontSize = 34;
  final double cardPrimaryText = 18;
  final double cardSecondaryText = 12;
}

class _Padding {
  final double pagePadding = 22;
  final double textFieldPadding = 15;
}

class _Radius {
  final double textFieldRadius = 27;
  final double cardRadius = 8;
}

class _Size {
  final double textFieldWidth = 374;
  final double textFieldHeight = 48;
  final double cardWidth = 177;
  final double cardHeight = 211;
}
