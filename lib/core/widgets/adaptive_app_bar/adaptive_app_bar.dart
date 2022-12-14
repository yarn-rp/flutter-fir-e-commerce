import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_buttons/adaptive_button.dart';
import 'package:go_router/go_router.dart';

class AdaptiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AdaptiveAppBar({
    Key? key,
    this.backgroundColor,
    this.leading,
    this.title,
    this.trailing,
    this.centerTitle,
    this.bottom,
    this.height = kToolbarHeight,
    this.forceAndroid = false,
    this.elevation = 0.5,
    this.border,
  }) : super(key: key);

  final Color? backgroundColor;
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;
  final bool? centerTitle;
  final PreferredSizeWidget? bottom;
  final double? height;
  final bool forceAndroid;
  final double elevation;
  final Border? border;

  @override
  Size get preferredSize => Size.fromHeight(
        (height ?? kMinInteractiveDimensionCupertino) +
            (bottom?.preferredSize.height ?? 0),
      );

  @override
  Widget build(BuildContext context) {
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    final canPop = GoRouter.of(context).canPop();

    if (forceAndroid || Theme.of(context).platform == TargetPlatform.android) {
      return AppBar(
        centerTitle: centerTitle,
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor ?? Theme.of(context).backgroundColor,
        toolbarHeight: height!,
        elevation: elevation,
        leading: leading ??
            (canPop
                ? AdaptiveIconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  )
                : null),
        title: title,
        bottom: bottom,
        actions: [
          if (trailing != null)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: trailing!,
            )
        ],
      );
    } else {
      if (bottom != null) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: height ?? kToolbarHeight,
                minHeight: height ?? kToolbarHeight,
              ),
              child: CupertinoNavigationBar(
                automaticallyImplyLeading: false,
                padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
                border: border ??
                    (bottom != null
                        ? Border.all(color: Colors.transparent)
                        : Border(
                            bottom: BorderSide(
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? const Color(0x4D000000)
                                  : CupertinoColors.systemGrey.withAlpha(150),
                              width: 0,
                            ),
                          )),
                backgroundColor: backgroundColor ??
                    Theme.of(context).backgroundColor.withOpacity(0.90),
                leading: leading ??
                    ((title != null && (centerTitle != null && !centerTitle!))
                        ? Align(
                            alignment: Alignment.centerLeft,
                            child: title,
                          )
                        : (Navigator.canPop(context)
                            ? AdaptiveIconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              )
                            : null)),
                middle: (centerTitle != null && centerTitle!) ? title : null,
                trailing: trailing,
                transitionBetweenRoutes: false,
              ),
            ),
            if (bottom != null) Flexible(child: bottom!)
          ],
        );
      } else {
        return CupertinoNavigationBar(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          automaticallyImplyLeading: false,
          border: border ??
              (bottom != null
                  ? Border.all(color: Colors.transparent)
                  : Border(
                      bottom: BorderSide(
                        color: Theme.of(context).brightness == Brightness.light
                            ? const Color(0x4D000000)
                            : CupertinoColors.systemGrey.withAlpha(150),
                        width: 0,
                      ),
                    )),
          backgroundColor: backgroundColor ??
              Theme.of(context).backgroundColor.withOpacity(0.90),
          leading: leading ??
              ((title != null && (centerTitle != null && !centerTitle!))
                  ? Align(
                      alignment: Alignment.centerLeft,
                      child: title,
                    )
                  : (canPop
                      ? AdaptiveIconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        )
                      : null)),
          middle: (centerTitle != null && centerTitle!) ? title : null,
          trailing: trailing,
          transitionBetweenRoutes: false,
        );
      }
    }
  }
}
