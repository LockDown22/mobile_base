import 'package:flutter/material.dart';





const kPadding = {
  0: EdgeInsets.all(8),
  1: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
  2: EdgeInsets.symmetric(horizontal: 24),
  3: EdgeInsets.all(24),
  4: EdgeInsets.symmetric(horizontal: 16),
  5: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
  6: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  7: EdgeInsets.fromLTRB(16,18,16,12),
  8: EdgeInsets.all(16),
};

const kSpacer = Spacer();

const kSpacingHeight4 = SizedBox(
  height: 4,
);

const kSpacingHeight2 = SizedBox(
  height: 2,
);


const kSpacingHeight6 = SizedBox(
  height: 6,
);

const kSpacingHeight8 = SizedBox(
  height: 8,
);


const kSpacingHeight10 = SizedBox(
  height: 10,
);

const kSpacingHeight12 = SizedBox(
  height: 12,
);

const kSpacingHeight14 = SizedBox(
  height: 14,
);


const kSpacingHeight16 = SizedBox(
  height: 16,
);

const kSpacingHeight18 = SizedBox(
  height: 18,
);

const kSpacingHeight24 = SizedBox(
  height: 24,
);

const kSpacingHeight32 = SizedBox(
  height: 32,
);

const kSpacingHeight36 = SizedBox(
  height: 36,
);

const kSpacingHeight48 = SizedBox(
  height: 48,
);

const kSpacingWidth2 = SizedBox(
  width: 2,
);

const kSpacingWidth4 = SizedBox(
  width: 4,
);

const kSpacingWidth6 = SizedBox(
  width: 6,
);

const kSpacingWidth8 = SizedBox(
  width: 8,
);

const kSpacingWidth12 = SizedBox(
  width: 12,
);

const kSpacingWidth14 = SizedBox(
  width: 14,
);

const kSpacingWidth16 = SizedBox(
  width: 16,
);

const kSpacingWidth24 = SizedBox(
  width: 24,
);

const kSpacingWidth32 = SizedBox(
  width: 32,
);

const kSpacingWidth48 = SizedBox(
  width: 48,
);


const int kSizePage = 10;


class ColorConstants {
  // static Color? statusColor(String status) =>
  //     status == CodeBase.thanhCong || status == CodeBase.dangMoBan
  //         ? ColorConstants.colorLightGreen
  //         : status == CodeBase.moi
  //         ? ColorConstants.primaryColor
  //         : status == CodeBase.huy || status == CodeBase.dungBan || status == CodeBase.dungMoBan
  //         ? ColorConstants.colorRed
  //         : status == CodeBase.choMoBan
  //         ? ColorConstants.primaryColor
  //         : null;
  static const Color bgColor = Color(0xffF4F7FA);
  static const Color bgItemColor = Color(0xffF4F7FA);

  static const Color lineColor = Color(0xFFD0D0D0);
  static const Color primaryColor = gradientStartColor1;
  static const Color textError = Color(0xffC04451);
// const Color primaryColor = Color.fromRGBO(51, 173, 255, 60);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color darkText = Colors.black54;
  static const Color darkGrayText = Color(0xff313131);
  static const Color colorGrayText = Color(0xff9B9B9B);
  static const Color highlightColor = Colors.blue;
  static const Color bgLoadingColor = Color(0x50313131);
  static const Color bgLurColor = Color(0x3444c662);
  static const Color whiteGrayColor = Color(0xff9B9B9B);
  static const Color grayColor = Color(0xfff2f2f2);
  static const Color errColor = Colors.red;
  static const Color successColor = Color(0xff44c662);
  static const Color infoColor = Colors.blueAccent;
  static const Color gradientEndColor = Color(0xff1e656d);
  static const Color gradientStartColor = Color(0xff00344d);
  static const Color gradientStartColor1 = Color(0xff155158);
  static const Color borderColor = Color(0xffe0e0e0);
  static const Color endVay247Color = Color(0xff00A800);


  static const MaterialColor primaryMaterialColor = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xff1e656d),
      100: Color(0xff1e656d),
      200: Color(0xff1e656d),
      300: Color(0xff1e656d),
      400: Color(0xff1e656d),
      500: Color(0xff1e656d),
      600: Color(0xff1e656d),
      700: Color(0xff1e656d),
      800: Color(0xff1e656d),
      900: Color(0xff1e656d),
    },
  );
  static const int _primaryValue = 0xff1e656d;

  static const themeColor = Color(0xfff5a623);

  static const greyColor = Color(0xffaeaeae);
  static const greyColor2 = Color(0xffE8E8E8);
}

class KeyBase {
  static String error = 'error';
  static String success = '200';
  static String loginPage = 'login';
  static String registerPage = 'register';
  static String el014 = 'El014';
  static String firstLogin = 'EL008';
  static String forgetpassword = 'EL012';
  static String re_password = 'EL017';
  static String forceUpdate = 'ERLG002';
  static String headerInvalid = 'ERLG003';
  static String unauthorized = 'EL009';
  static String erlg005 = 'ERLG005';
  static String tatCa = 'tat_ca';
  static const String moi = 'moi';
  static const String chuaGan = 'chua_gan';
  static const String daGan = 'da_gan';
  static const String dangXuLy = 'dang_xu_ly';
  static const String daChoVay = 'da_cho_vay';
  static const String huy = 'huy';
  static const String number = 'number';
  static const String money = 'money';
  static const String text = 'text';
  static const String select = 'select';
  static const String image = 'image';
  static const String khongBatBuoc = 'khong_bat_buoc';
  static const String warning = 'warning';
  static const String vayThanhCong = 'vay_thanh_cong';
  static const String user = 'user';
  static const String userInvester = 'user_invester';
// warning
}

