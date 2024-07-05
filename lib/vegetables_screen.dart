import 'package:delivery_app_ui/core/constants/color_items.dart';
import 'package:delivery_app_ui/core/constants/strings_items.dart';
import 'package:flutter/material.dart';

class VegetablesScreen extends StatefulWidget {
  const VegetablesScreen({super.key});

  @override
  State<VegetablesScreen> createState() => _VegetablesScreenState();
}

class _VegetablesScreenState extends State<VegetablesScreen> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // flexibleSpace: Align(
        //   alignment: Alignment.topRight,
        //   child: SizedBox(
        //       width: _Size().vector,
        //       height: _Size().vector,
        //       child: Image.asset('assets/vector.png')),
        // ),
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
                VegetablesLanguageItems().title,
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(
                  right: _Padding().pagePadding,
                  left: _Padding().pagePadding,
                  top: 20,
                  bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: isPressed
                            ? Colorss.chipsSelectedField
                            : Colorss.chipsUnselectedField,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(_Radius().chips1)))),
                    onPressed: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                    },
                    child: Text(VegetablesLanguageItems().chipsSelected,
                        style: TextStyle(
                            color: isPressed
                                ? Colorss.chipsPrimaryText
                                : Colorss.chipsSecondaryText)),
                  ),
                  ElevatedButtons(
                      text: VegetablesLanguageItems().chipsUnselected),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: _Padding().pagePadding),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButtons(
                        text: VegetablesLanguageItems().chipsUnselected2),
                    ElevatedButtons(
                        text: VegetablesLanguageItems().chipsUnselected3),
                    ElevatedButtons(
                        text: VegetablesLanguageItems().chipsUnselected4)
                  ]),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ItemRowView(
                  image: Image.asset('assets/itemRowView1.png'),
                  text: VegetablesLanguageItems().itemRowViewPrimaryText,
                  number: VegetablesLanguageItems().itemRowViewNumber1,
                  type: VegetablesLanguageItems().itemRowViewSecondaryText,
                ),
                ItemRowView(
                    image: Image.asset('assets/itemRowView2.png'),
                    text: VegetablesLanguageItems().itemRowViewPrimaryText2,
                    number: VegetablesLanguageItems().itemRowViewNumber2,
                    type: VegetablesLanguageItems().itemRowViewSecondaryText2),
                ItemRowView(
                    image: Image.asset('assets/itemRowView3.png'),
                    text: VegetablesLanguageItems().itemRowViewPrimaryText3,
                    number: VegetablesLanguageItems().itemRowViewNumber3,
                    type: VegetablesLanguageItems().itemRowViewSecondaryText2)
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}

class ItemRowView extends StatelessWidget {
  const ItemRowView(
      {super.key,
      required this.image,
      required this.text,
      required this.number,
      required this.type});
  final Image image;
  final String text;
  final String number;
  final String type;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: _Size().itemRowViewHeight,
        width: _Size().itemRowViewWidth,
        child: Card(
          child: Column(
            children: [
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 8, left: _Padding().pagePadding),
                      child: Container(
                        width: _Size().cardMediaWidth,
                        height: _Size().cardMediaHeight,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                _Radius().itemRowViewMediaRadius)),
                        child: image,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                    ),
                    child: Container(
                      height: _Size().cardMediaHeight,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              text,
                              style: TextStyle(
                                  fontSize: _FontSize().itemRowViewTextPrimary,
                                  fontWeight: FontWeight.bold,
                                  color: Colorss.textPrimaryColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text(
                                  number,
                                  style: TextStyle(
                                      fontSize:
                                          _FontSize().itemRowViewTextNumber,
                                      fontWeight: FontWeight.bold,
                                      color: Colorss.textPrimaryColor),
                                ),
                                Text(
                                  type,
                                  style: TextStyle(
                                      fontSize:
                                          _FontSize().itemRowViewTextSecondary,
                                      color: Colorss.textSecondary),
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(
                                left: _Padding().pagePadding, bottom: 8),
                            child: Row(
                              children: [
                                ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colorss.textSecondary,
                                    ),
                                    label: const Text('')),
                                ElevatedButton.icon(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colorss.primaryButton),
                                    icon: const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                    ),
                                    label: const Text(''))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ElevatedButtons extends StatelessWidget {
  const ElevatedButtons({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colorss.chipsUnselectedField,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(_Radius().chips1)))),
      onPressed: () {},
      child: Text(text, style: TextStyle(color: Colorss.chipsSecondaryText)),
    );
  }
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

class _Padding {
  final double pagePadding = 22;
  final double textFieldPadding = 15;
  final double chipsPadding = 10;
}

class _FontSize {
  final double titleFontSize = 30;
  final double chipsSelected = 14;
  final double itemRowViewTextPrimary = 18;
  final double itemRowViewTextNumber = 22;
  final double itemRowViewTextSecondary = 16;
}

class _Size {
  final double textFieldWidth = 374;
  final double textFieldHeight = 48;
  final double vector = 234;
  final double itemRowViewHeight = 160;
  final double itemRowViewWidth = 414;
  final double cardMediaWidth = 177;
  final double cardMediaHeight = 128;
  final double cardTextWidth = 150;
}

class _Radius {
  final double textFieldRadius = 27;
  final double chips1 = 24;
  final double itemRowViewMediaRadius = 8;
}
