import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fir_e_commerce/core/theme/page_transitions.dart';
import 'package:flutter_fir_e_commerce/core/theme/text_theme.dart';

///Theme Dark
final ThemeData themeDark = ThemeData(
  errorColor: const Color(0xffFF6666),
  brightness: Brightness.dark,
  cardTheme: CardTheme(
    shadowColor: Colors.black.withOpacity(0.8),
    elevation: 1,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    // color: Color(0XFF223340),
    color: const Color(0xff3D3D3D),
  ),
  primaryIconTheme: const IconThemeData(
    color: Colors.white,
  ),

  splashFactory: InkRipple.splashFactory,
  canvasColor: const Color(0xff121212),
  textTheme: textDarkTheme,
  // textTheme: textTheme,
  primaryColor: const Color(0xff67C4A7),
  // tabBarTheme: tabBarThemeLight,
  // platform: TargetPlatform.android,
  sliderTheme: SliderThemeData(
    trackHeight: 16,
    trackShape: const RoundedRectSliderTrackShape(),
    inactiveTrackColor: const Color(0xff3D3D3D),
    activeTrackColor: const Color(0xff3EE78A),
    thumbShape: const RoundSliderThumbShape(
      enabledThumbRadius: 14,
      pressedElevation: 8,
    ),
    thumbColor: Colors.white,
    overlayColor: const Color(0xff3EE78A).withOpacity(0.2),
    overlayShape: const RoundSliderOverlayShape(overlayRadius: 32),
    tickMarkShape: const RoundSliderTickMarkShape(),
    inactiveTickMarkColor: Colors.white,
    valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
    valueIndicatorColor: Colors.black,
    valueIndicatorTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
  ),
  cupertinoOverrideTheme: const CupertinoThemeData(
    primaryColor: const Color(0xff67C4A7),
    textTheme: CupertinoTextThemeData(
      primaryColor: Color(0xff3EE78A),
      tabLabelTextStyle: TextStyle(
        fontSize: 10,
        color: white,
        fontFamily: 'PNBold',
      ),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff696969),
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff696969),
      ),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff696969),
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xff1D99DD),
      ),
    ),
    labelStyle: TextStyle(
      fontSize: 16,
      color: white,
      fontFamily: 'PNRegular',
    ),
    hintStyle: TextStyle(
      fontSize: 16,
      color: Colors.grey,
      fontFamily: 'PNRegular',
    ),
  ),

  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color(0xff1D99DD),
  ),
  dividerTheme: const DividerThemeData(
    color: Color(0xff121212),
    thickness: 0.5,
    indent: 20,
    endIndent: 20,
  ),
  dividerColor: const Color(0xff696969),
  // dividerColor: const Color(0xffD2D2D2),

  iconTheme: iconThemeDataDark,
  appBarTheme: appBarThemeDark,
  pageTransitionsTheme: pageTransitions,
  fontFamily: 'PNRegular',
  backgroundColor: const Color(0xff1e1e1e),
  bottomAppBarTheme: bottomAppBarThemeDark,
  cardColor: const Color(0xff3D3D3D),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    unselectedLabelStyle: TextStyle(
      fontFamily: 'PNBold',
      fontSize: 12,
    ),
    selectedLabelStyle: TextStyle(
      fontFamily: 'PNBold',
      fontSize: 12,
    ),
    selectedIconTheme: IconThemeData(
      size: 22,
    ),
    unselectedIconTheme: IconThemeData(
      size: 22,
    ),
  ),
  colorScheme: ColorScheme.fromSwatch(
    accentColor: const Color(0xff1FD970),
    primarySwatch: const MaterialColor(
      400,
      {
        100: Color(0xff1D99DD),
        200: Color(0xff1D99DD),
        300: Color(0xff1D99DD),
        400: Color(0xff1D99DD),
        500: Color(0xff1D99DD),
        600: Color(0xff1D99DD),
        700: Color(0xff1D99DD),
        800: Color(0xff1D99DD),
        900: Color(0xff1D99DD),
      },
    ),

    brightness: Brightness.dark,
    // primary: orange,
  ),
);

BottomAppBarTheme bottomAppBarThemeDark = const BottomAppBarTheme(
  color: Colors.transparent,
  elevation: 0.5,
);
AppBarTheme appBarThemeDark = const AppBarTheme(
  backgroundColor: Colors.transparent,
  elevation: 0,
  foregroundColor: Colors.white,
  iconTheme: IconThemeData(
    color: Colors.white,
  ),
);

IconThemeData iconThemeDataDark = const IconThemeData(
  color: Colors.white,
  size: 24,
);

final systemDarkTheme = SystemUiOverlayStyle.dark.copyWith(
  systemNavigationBarColor: const Color(0xff1e1e1e),
  systemNavigationBarIconBrightness: Brightness.light,
);
