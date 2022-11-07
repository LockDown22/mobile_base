import 'package:flutter/material.dart';

import 'common/constants/app_constants.dart';

ThemeData light(BuildContext context) {
  return ThemeData.light().copyWith(
      backgroundColor: ColorConstants.bgColor,
      primaryColor: ColorConstants.primaryMaterialColor,
      primaryColorDark: ColorConstants.primaryMaterialColor,
      primaryColorLight: ColorConstants.primaryMaterialColor,
      iconTheme: const IconThemeData(
          color: ColorConstants.darkText),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xffe5e5e5),
          selectedLabelStyle: TextStyle(color: Color(0xffb00000))),
      toggleableActiveColor: Colors.red,
      bottomAppBarColor: const Color(0xffe5e5e5),
      primaryIconTheme: const IconThemeData(color: Colors.white),
      brightness: Brightness.light,
      cardColor: Colors.white,
      dialogBackgroundColor: Colors.white,
      scaffoldBackgroundColor: ColorConstants.white,
      sliderTheme: SliderTheme.of(context).copyWith(
        activeTrackColor: const Color(0xff3f414e),
        inactiveTrackColor: const Color(0xffa0a3b1),
        trackHeight: 0.5,
        thumbColor: const Color(0xff3f414e),
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8.0),
        overlayColor: Colors.purple.withAlpha(32),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 14.0),
      ),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              overlayColor:  MaterialStateProperty.all<Color>(ColorConstants.bgLurColor.withOpacity(0.15))
          )
      ),
      cardTheme: CardTheme(
          elevation: 5,
          margin: const EdgeInsets.all(0),
          shadowColor: const Color(0xffe5e5e5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: Colors.white),
      appBarTheme: AppBarTheme(
          backgroundColor: ColorConstants.primaryColor,
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          titleTextStyle: Theme.of(context).textTheme.headline6!.copyWith(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 1,),
          elevation: 0),
      textTheme: TextTheme(
          button: ThemeData.light().textTheme.button!.copyWith(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Gotham'
          ),
          caption: ThemeData.light().textTheme.caption!.copyWith(
              color: Colors.black54,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Gotham'),
          headline6: ThemeData.light().textTheme.headline6!.copyWith(
              color: Colors.black54,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontFamily: 'Gotham'
            //used
          ),
          headline5: ThemeData.light().textTheme.headline5!.copyWith(
              color: Colors.black54,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gotham'
            //used
          ),
          headline4: ThemeData.light().textTheme.headline4!.copyWith(
              color: Colors.black54,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gotham'),
          headline3: ThemeData.light().textTheme.headline3!.copyWith(
              color: Colors.black54,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gotham'),
          headline2: ThemeData.light().textTheme.headline2!.copyWith(
              color: Colors.black54,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gotham'),
          headline1: ThemeData.light().textTheme.headline1!.copyWith(
              color: Colors.black54,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gotham'),
          subtitle1: ThemeData.light().textTheme.subtitle1!.copyWith(
              color: Colors.black54,
              fontSize: 15,
              fontWeight: FontWeight.w400,
              fontFamily: 'Gotham'
            //da dung
          ),
          subtitle2: ThemeData.light().textTheme.subtitle2!.copyWith(
              color: Colors.black54,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'Gotham'),
          bodyText2: ThemeData.light().textTheme.bodyText2!.copyWith(
              color: Colors.black54,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'Gotham'),
          bodyText1: ThemeData.light().textTheme.bodyText1!.copyWith(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Gotham')),

      dividerTheme: const DividerThemeData(
        thickness: 1,
        space: 1,
        color: ColorConstants.borderColor,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: ColorConstants.primaryColor,
        selectionHandleColor: ColorConstants.primaryColor,
        //thereby
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusColor: ColorConstants.primaryColor,
        prefixStyle: const TextStyle(color: Colors.black),
        hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontWeight: FontWeight.normal, color: const Color(0xffc4c4c4)),
        labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontWeight: FontWeight.normal, color: const Color(0xffc4c4c4)),
        // floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixStyle: const TextStyle(color: Colors.black),
        errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
        contentPadding:
        const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: ColorConstants.white, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: ColorConstants.white, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide( width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: ColorConstants.darkGrayText, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 48),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Colors.transparent)),
            primary: const Color(0xffD10000),
            elevation: 0),
      ), colorScheme: const ColorScheme.light(onPrimary: ColorConstants.primaryColor).copyWith(secondary: ColorConstants.primaryColor)
  );
}
ThemeData dark(BuildContext context) {
  return ThemeData.dark();
}