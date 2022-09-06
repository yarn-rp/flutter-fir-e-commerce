import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialoger {
  static Future<T?> showTwoChoicesDialog<T>({
    required BuildContext context,
    required String title,
    required String description,
    Color? backgroundColor,
    String? acceptText,
    Color? acceptColor,
    Color? declineColor,
    String? declineText,
  }) =>
      showAdaptiveDialog(
          context: context,
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'PNBold',
              fontSize: 18,
            ),
          ),
          description: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'PNRegular',
              fontSize: 14,
              // fontWeight: FontWeight.w100,
            ),
          ),
          actions: [
            Action(name: declineText ?? 'Cancelar'),
            Action(name: acceptText ?? 'Aceptar', isDefault: true),
          ]);

  static Future<T?> showErrorDialog<T>({
    required BuildContext context,
    required String title,
    required String description,
    Color? backgroundColor,
    String buttonText = 'Ok',
    Color buttonTextColor = Colors.red,
  }) =>
      showAdaptiveDialog(
          context: context,
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'PNBold',
              fontSize: 18,
            ),
          ),
          description: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'PNRegular',
              fontSize: 14,
              // fontWeight: FontWeight.w100,
            ),
          ),
          actions: [
            Action(
              name: 'OK',
            ),
          ]);

  static Future<T?> showAdaptiveDialog<T>({
    required BuildContext context,
    required Widget title,
    required Widget description,
    required List<Action<T>> actions,
    bool expandDescription = false,
    EdgeInsets padding = const EdgeInsets.all(16),
    Color? barrierColor,
    Duration? transitionDuration,
    Curve? transitionCurve,
    FutureOr<void> Function<T>(T action)? callbackAction,
  }) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      return showCupertinoDialog<T?>(
        barrierDismissible: true,
        barrierLabel: 'Dismiss',
        context: context,
        builder: (context) => CupertinoAlertDialog(
          title: title,
          content: description,
          actions: actions
              .map(
                (e) => CupertinoDialogAction(
                  isDestructiveAction: e.isDestructive,
                  isDefaultAction: e.isDefault,
                  child: Text(
                    e.name,
                    style: TextStyle(
                      fontFamily: e.isDefault ? 'PNBold' : 'PNRegular',
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context, e.name);
                    if (callbackAction != null) callbackAction(e);
                  },
                ),
              )
              .toList(),
        ),
      );
    }
    final actionsWidget = actions
        .map<Widget>(
          (action) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              focusColor: Theme.of(context).canvasColor,
              highlightColor: Theme.of(context).canvasColor,
              splashColor: Colors.transparent,
              onTap: () {
                if (callbackAction != null) callbackAction(action);
                Navigator.pop(context, action.name);
              },
              child: Padding(
                //TODO Change if you dont want this paddding
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Center(
                  child: Text(
                    action.name,
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                          fontSize: 16,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ),
              ),
            ),
          ),
        )
        .toList();
    return showGeneralDialog<T?>(
        barrierDismissible: true,
        barrierLabel: 'Dismiss',
        barrierColor: barrierColor ?? Colors.black.withOpacity(0.8),
        transitionDuration:
            transitionDuration ?? const Duration(milliseconds: 300),
        context: context,
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: transitionCurve ?? Curves.easeInOutBack,
            ),
            child: child,
          );
        },
        pageBuilder: (context, anim, anim2) {
          final _description = Padding(
            padding: const EdgeInsets.only(top: 8),
            child: description,
          );
          return Dialog(
            backgroundColor: Theme.of(context).canvasColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            // insetPadding: EdgeInsets.zero,
            child: Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height / 2,
                minHeight: 50,
              ),
              child: Padding(
                padding: padding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (expandDescription)
                      Expanded(
                        child: Column(
                          children: [title, Expanded(child: _description)],
                        ),
                      )
                    else
                      Column(
                        children: [
                          title,
                          _description,
                        ],
                      ),
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                      child: actionsWidget.length > 1
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // crossAxisAlignment: WrapCrossAlignment.center,
                              // alignment: WrapAlignment.spaceBetween,
                              children: actionsWidget
                                  .map((e) => Expanded(child: e))
                                  .toList(),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: actionsWidget,
                            ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class Action<T> {
  Action({
    required this.name,
    this.isDestructive = false,
    this.isDefault = false,
    this.color,
    this.backgroundColor,
  });

  final String name;
  final bool isDestructive;
  final bool isDefault;
  final Color? color;
  final Color? backgroundColor;
}
