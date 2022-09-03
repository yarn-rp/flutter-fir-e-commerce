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
    this.bottom,
    this.placeholder,
    this.showBorder = true,
  }) : super(key: key);
  final void Function(bool show) onFocusChanged;
  final double height;
  final FocusNode searchFocus;
  final void Function(String) onSubmitted;
  final void Function(String) onChanged;
  final TextEditingController controller;
  final String? placeholder;
  final PreferredSizeWidget? bottom;
  final bool showBorder;

  @override
  _AdaptiveSearchBarState createState() => _AdaptiveSearchBarState();

  @override
  Size get preferredSize =>
      Size.fromHeight(height + (bottom?.preferredSize.height ?? 0));
}

class _AdaptiveSearchBarState extends State<AdaptiveSearchBar> {
  late bool showSearch;

  @override
  void initState() {
    super.initState();
    showSearch = false;

    widget.searchFocus.addListener(() {
      log('estoy en el listener del searchFocus');
      log('el focus esta en ${widget.searchFocus.hasFocus}');

      widget.onFocusChanged(widget.searchFocus.hasFocus);

      if (widget.searchFocus.hasFocus) {
        setState(() {
          showSearch = true;
        });
      }
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
                border: widget.showBorder
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
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 12),
                  child: GestureDetector(
                    onTap: () {
                      log('On Pressed');
                    },
                    child: AnimatedContainer(
                      width: MediaQuery.of(context).size.width - 32,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.fastLinearToSlowEaseIn,
                      alignment: Alignment.centerLeft,
                      child: TextField(
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
                        decoration: InputDecoration(
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? const Color(0XFF3D3D3D)
                                  : const Color(0XFFEAEAEA),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? const Color(0XFF3D3D3D)
                                  : const Color(0XFFEAEAEA),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          fillColor:
                              Theme.of(context).brightness == Brightness.dark
                                  ? const Color(0XFF3D3D3D)
                                  : const Color(0XFFEAEAEA),
                          focusColor:
                              Theme.of(context).brightness == Brightness.dark
                                  ? const Color(0XFF3D3D3D)
                                  : const Color(0XFFEAEAEA),
                          contentPadding: const EdgeInsets.all(16),
                          hintText:
                              widget.placeholder ?? 'Buscar contacto o número',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? const Color(0XFF3D3D3D)
                                  : const Color(0XFFEAEAEA),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ),
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
                        placeholder:
                            widget.placeholder ?? 'Buscar contacto o número',
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
