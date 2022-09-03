import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/adaptive_app_bar.dart';

class AdaptiveAppBarDelegate extends SliverPersistentHeaderDelegate {
  const AdaptiveAppBarDelegate({
    required this.topPadding,
    required this.height,
    this.backgroundColor,
    this.leading,
    this.title,
    this.trailing,
    this.centerTitle,
    this.bottom,
  });

  final double topPadding;
  final Color? backgroundColor;
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;
  final bool? centerTitle;
  final double height;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return AdaptiveAppBar(
      height: minExtent,
      leading: leading,
      title: title,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      trailing: trailing,
      bottom: bottom,
    );
  }

  @override
  double get maxExtent =>
      height + topPadding + (bottom?.preferredSize.height ?? 0);

  @override
  double get minExtent =>
      height + topPadding + (bottom?.preferredSize.height ?? 0);

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
