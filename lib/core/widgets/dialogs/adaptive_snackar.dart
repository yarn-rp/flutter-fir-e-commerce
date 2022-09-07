import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

SnackBar getAdaptiveSnackbar({
  required BuildContext context,
  required Widget content,
  Color? backgroundColor,
  bool? showBackdrop,
  Duration? duration,
  double? height,
}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  final _child = Container(
    // alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
      color: backgroundColor ??
          (Theme.of(context).brightness == Brightness.light
                  ? Color(0xff1e1e1e)
                  : Color(0xff121212))
              .withOpacity(0.85),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 14,
      horizontal: 16,
    ),
    child: content,
  );
  final _height = height ?? kToolbarHeight;

  final _backgroundWidget = Container(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 18,
          sigmaY: 18,
        ),
        child: _child,
      ),
    ),
  );

  return SnackBar(
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.zero,
      duration: duration ?? const Duration(seconds: 5),
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      content: Container(
        child: _backgroundWidget,
      ));
}
