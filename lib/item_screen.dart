import 'package:delivery_app_ui/core/constants/color_items.dart';
import 'package:delivery_app_ui/core/constants/strings_items.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: AlignmentDirectional.topStart,
              child: Image.asset('assets/itemScreenImage.png')),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Container(
              decoration: BoxDecoration(
                  color: Colorss.itemScreenContainer,
                  borderRadius: BorderRadius.circular(40)),
              height: _Size().containerHeight,
              width: _Size().containerWidth,
              child: Padding(
                padding: EdgeInsets.only(
                    left: _Padding().pagePadding, top: _Padding().pagePadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        ItemScreenLanguageItems().title1,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: _FontSize().title1,
                            fontWeight: FontWeight.bold,
                            color: Colorss.textPrimaryColor),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          ItemScreenLanguageItems().text1,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: _FontSize().text1,
                              fontWeight: FontWeight.bold,
                              color: Colorss.textPrimaryColor),
                        ),
                        Text(
                          ItemScreenLanguageItems().text2,
                          style: TextStyle(
                              fontSize: _FontSize().text2,
                              color: Colorss.textSecondary),
                        )
                      ],
                    ),
                    Text(
                      ItemScreenLanguageItems().text3,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: _FontSize().text3,
                          color: Colorss.text3Color),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        ItemScreenLanguageItems().title2,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: _FontSize().title2,
                            color: Colorss.textPrimaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      ItemScreenLanguageItems().secondaryText,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: _FontSize().textSecondary,
                        color: Colorss.textSecondary,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                color: Colorss.textSecondary,
                              ),
                              label: const Text('')),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colorss.primaryButton),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                ),
                                Text(
                                  ItemScreenLanguageItems().buttonText,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: _FontSize().buttonText),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Size {
  final double containerWidth = 414;
  final double containerHeight = 615;
}

class _Padding {
  final double pagePadding = 22;
}

class _FontSize {
  final double title1 = 30;
  final double text1 = 32;
  final double text2 = 24;
  final double text3 = 17;
  final double title2 = 22;
  final double textSecondary = 17;
  final double buttonText = 15;
}
