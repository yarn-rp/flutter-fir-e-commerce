import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/cupertino_nav_bar.dart';

class AdaptiveSearchBar extends StatefulWidget implements PreferredSizeWidget {
  const AdaptiveSearchBar({
    Key? key,
    required this.height,
    required this.searchFocus,
    required this.onSubmitted,
    required this.controller,
    required this.onChanged,
    required this.onFocusChanged,
    required this.trailing,
    this.bottom,
    required this.onTapTrailing,
    required this.shouldShowTrailing,
  }) : super(key: key);
  final void Function(bool show) onFocusChanged;
  final void Function(bool show) onTapTrailing;
  final double height;
  final FocusNode searchFocus;
  final void Function(String) onSubmitted;
  final void Function(String) onChanged;
  final TextEditingController controller;
  final Text trailing;
  final PreferredSizeWidget? bottom;
  final ValueNotifier<bool> shouldShowTrailing;

  @override
  AdaptiveSearchBarState createState() => AdaptiveSearchBarState();

  @override
  Size get preferredSize =>
      Size.fromHeight(height + (bottom?.preferredSize.height ?? 0));
}

class AdaptiveSearchBarState extends State<AdaptiveSearchBar> {
  late bool showSearch;

  @override
  void initState() {
    super.initState();
    showSearch = false;

    widget.searchFocus.addListener(() {
      log('estoy en el listener del searchFocus');
      log('el focus esta en ${widget.searchFocus.hasFocus}');

      widget.onFocusChanged(widget.searchFocus.hasFocus);

      if (widget.searchFocus.hasFocus && mounted) {
        setState(() {
          showSearch = true;
        });
      }
    });
    widget.shouldShowTrailing.addListener(() {
      setState(() {
        showSearch = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = CupertinoDynamicColor.maybeResolve(
          Theme.of(context).backgroundColor.withOpacity(0.90),
          context,
        ) ??
        CupertinoTheme.of(context).barBackgroundColor;

    return Container(
      child: Container(
        constraints: BoxConstraints(
          maxHeight: widget.height,
          minHeight: widget.height,
        ),
        child: Platform.isIOS
            ? wrapWithBackground(
                updateSystemUiOverlay: false,
                border: widget.searchFocus.hasFocus
                    ? Border(
                        bottom: BorderSide(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? const Color(0x4D000000)
                                  : CupertinoColors.systemGrey,
                          width: 0, // One physical pixel.
                        ),
                      )
                    : Border.all(color: Colors.transparent),
                backgroundColor: backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Positioned(
                        left: 0,
                        child: AnimatedContainer(
                          // color: Colors.red,
                          width: showSearch
                              ? MediaQuery.of(context).size.width -
                                  24 -
                                  12 -
                                  (widget.trailing.data!.length *
                                          widget.trailing.style!.fontSize! /
                                          2)
                                      .toInt()
                              : MediaQuery.of(context).size.width - 24,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.fastLinearToSlowEaseIn,
                          alignment: Alignment.centerLeft,
                          child: CupertinoSearchTextField(
                            onChanged: widget.onChanged,
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontSize: 18,
                                    ),
                            onSubmitted: (value) {
                              widget.searchFocus.unfocus();

                              widget.onSubmitted(value);
                            },
                            focusNode: widget.searchFocus,
                            controller: widget.controller,
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.fastLinearToSlowEaseIn,
                        right: showSearch ? 6 : -100,
                        child: showSearch
                            ? Align(
                                alignment: Alignment.bottomRight,
                                child: CupertinoButton(
                                  padding: const EdgeInsets.only(left: 12),
                                  onPressed: () {
                                    widget.onTapTrailing(!showSearch);
                                    setState(() {
                                      widget.controller.clear();

                                      widget.searchFocus.unfocus();
                                      showSearch = false;
                                    });
                                  },
                                  child: widget.trailing,
                                ),
                              )
                            : Container(),
                      )
                    ],
                  ),
                ),
              )
            : PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: kToolbarHeight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: AnimatedContainer(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width - 32,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.fastLinearToSlowEaseIn,
                      alignment: Alignment.centerLeft,
                      child: CupertinoSearchTextField(
                        prefixIcon: const SizedBox.shrink(),
                        onTap: () {
                          widget.searchFocus.requestFocus();
                        },
                        onChanged: widget.onChanged,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontSize: 18,
                            ),
                        onSubmitted: (value) {
                          widget.searchFocus.unfocus();

                          widget.onSubmitted(value);
                          /*  _dispatchEvent(context, GetSearch()); */
                        },
                        focusNode: widget.searchFocus,
                        controller: widget.controller,
                        placeholder: 'Search',
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
