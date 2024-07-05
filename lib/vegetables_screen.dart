import 'package:delivery_app_ui/product/language/color/color_items.dart';
import 'package:delivery_app_ui/product/language/language_items.dart';
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
      body: Stack(
        children: [
          Column(
            children: [
              AppBar(
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
                    left: _Padding().pagePadding,
                    top: _Padding().textFieldPadding),
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
                  padding:
                      EdgeInsets.symmetric(horizontal: _Padding().pagePadding),
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
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
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
}

class _Size {
  final double textFieldWidth = 374;
  final double textFieldHeight = 48;
  final double vector = 234;
}

class _Radius {
  final double textFieldRadius = 27;
  final double chips1 = 24;
}
