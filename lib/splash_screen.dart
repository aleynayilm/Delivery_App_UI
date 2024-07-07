import 'package:delivery_app_ui/categories_screen.dart';
import 'package:delivery_app_ui/core/constants/color_items.dart';
import 'package:delivery_app_ui/core/constants/strings_items.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorss.splashScreenBackgroundColor,
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: Image.asset('assets/shape1.png')),
          Align(
              alignment: Alignment.topRight,
              child: Image.asset('assets/shape2.png')),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 125),
              child: ElevatedButton(
                onPressed: () {
                  _displayBottomSheet(context);
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            _Radius().elevatedButtonRadius1))),
                child: Text(SplashScreenLanguageItems().elevatedButtonText1,
                    style:
                        TextStyle(fontSize: _FontSize().elevatedButtonSize1)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Future _displayBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      width: _Size().container1Width,
      height: _Size().container1Height,
      decoration: BoxDecoration(
          color: Colorss.bottomSheetBackgroundColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: _Padding().boxPadding),
            child: Container(
              width: _Size().container2Width,
              height: _Size().container2Height,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/box.png'),
                  )),
            ),
          ),
          SizedBox(
            width: _Size().container3Width,
            height: _Size().container3Height,
            child: Center(
              child: Text(
                SplashScreenLanguageItems().textPrimary,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colorss.textPrimaryColor,
                    fontSize: _FontSize().textPrimaryFont),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: _Padding().primaryButtonPadding),
            child: SizedBox(
              width: _Size().sizedBoxWidth,
              height: _Size().sizedBoxHeight,
              child: Text(
                SplashScreenLanguageItems().textSecondary,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colorss.textSecondary,
                    fontSize: _FontSize().textSecondaryFont,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoriesScreen(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                primary: Colorss.primaryButton,
                onPrimary: Colorss.primaryButtonText,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(_Radius().primaryButton)),
              ),
              child: Text(SplashScreenLanguageItems().elevatedButtonText2)),
          TextButton(
              onPressed: () {},
              child: Text(
                SplashScreenLanguageItems().elevatedButtonText3,
                style: TextStyle(color: Colorss.secondaryButtonText),
              ))
        ],
      ),
    ),
  );
}

class _FontSize {
  final double elevatedButtonSize1 = 15;
  final double textPrimaryFont = 32;
  final double textSecondaryFont = 17;
}

class _Radius {
  final double elevatedButtonRadius1 = 8;
  final double primaryButton = 8;
}

class _Size {
  final double container1Width = 414;
  final double container1Height = 584;
  final double container2Width = 104;
  final double container2Height = 104;
  final double container3Width = 326;
  final double container3Height = 85;
  final double sizedBoxWidth = 374;
  final double sizedBoxHeight = 79;
}

class _Padding {
  final double boxPadding = 50;
  final double primaryButtonPadding = 20;
}
