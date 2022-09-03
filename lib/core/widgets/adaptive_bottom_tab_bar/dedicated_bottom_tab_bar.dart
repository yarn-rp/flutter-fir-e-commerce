import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveTabItem {
  const AdaptiveTabItem(this.icon, this.label, {this.key});

  final IconData icon;
  final Key? key;
  final String label;
}

class AdaptiveBottomTabBar extends StatefulWidget {
  const AdaptiveBottomTabBar({
    Key? key,
    required this.items,
    required this.controller,
    this.activeColor,
    this.inactiveColor,
    this.backgroundColor,
    this.elevation,
    this.forceAndroid = false,
  }) : super(key: key);

  final PageController controller;
  final List<AdaptiveTabItem> items;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? backgroundColor;
  final double? elevation;
  final bool forceAndroid;
  @override
  _AdaptiveBottomTabBarState createState() => _AdaptiveBottomTabBarState();
}

class _AdaptiveBottomTabBarState extends State<AdaptiveBottomTabBar> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.controller.initialPage;
    widget.controller.addListener(() {
      if (widget.controller.page?.ceil() != currentIndex) {
        setState(() {
          currentIndex = widget.controller.page!.ceil();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS && !widget.forceAndroid) {
      return CupertinoTabBar(
        currentIndex: currentIndex,
        onTap: (index) {
          widget.controller.jumpToPage(index);
        },
        activeColor: widget.activeColor ?? Theme.of(context).iconTheme.color,
        inactiveColor: widget.inactiveColor ?? CupertinoColors.inactiveGray,
        backgroundColor: widget.backgroundColor ??
            Theme.of(context).backgroundColor.withOpacity(0.9),
        items: [
          ...widget.items.map(
            (e) => BottomNavigationBarItem(
              activeIcon: Icon(
                e.icon,
                key: e.key,
                size: 24,
                color: widget.activeColor ?? Theme.of(context).iconTheme.color,
              ),
              icon: Icon(
                e.icon,
                key: e.key,
                size: 24,
                color: widget.inactiveColor ?? CupertinoColors.inactiveGray,
              ),
              label: e.label,
            ),
          ),
        ],
      );
    } else {
      return BottomNavigationBar(
        elevation: widget.elevation,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(
          fontFamily: 'PNBold',
          fontSize: 12,
          color: widget.inactiveColor,
        ),
        selectedLabelStyle: TextStyle(
          fontFamily: 'PNBold',
          fontSize: 12,
          color: widget.activeColor,
        ),
        selectedItemColor: Theme.of(context).iconTheme.color,
        backgroundColor:
            widget.backgroundColor ?? Theme.of(context).backgroundColor,
        selectedIconTheme: const IconThemeData(
          size: 22,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 22,
        ),
        unselectedItemColor:
            widget.inactiveColor ?? CupertinoColors.inactiveGray,
        items: [
          ...widget.items.map(
            (e) => BottomNavigationBarItem(
              icon: Padding(
                key: e.key,
                padding: const EdgeInsets.only(bottom: 6, top: 4),
                child: Icon(
                  e.icon,
                ),
              ),
              label: e.label,
            ),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          widget.controller.jumpToPage(index);
        },
      );
    }
  }
}
