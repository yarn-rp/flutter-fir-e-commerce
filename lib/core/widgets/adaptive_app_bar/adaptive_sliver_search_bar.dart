// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/adaptive_search_bar.dart';

// class AdaptiveSearchBarDelegate extends SliverPersistentHeaderDelegate {
//   const AdaptiveSearchBarDelegate({
//     required this.height,
//     required this.topPadding,
//     required this.searchFocus,
//     required this.onSubmitted,
//     required this.controller,
//     required this.onChanged,
//     required this.onFocusChanged,
//   });
//   final void Function(bool show) onFocusChanged;
//   final double height;
//   final double topPadding;
//   final FocusNode searchFocus;
//   final void Function(String) onSubmitted;
//   final void Function(String) onChanged;
//   final TextEditingController controller;
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return AdaptiveSearchBar(
//       onSubmitted: onSubmitted,
//       height: minExtent,
//       searchFocus: searchFocus,
//       onChanged: onChanged,
//       onFocusChanged: onFocusChanged,
//       controller: controller,
//     );
//   }

//   @override
//   double get maxExtent => height + topPadding;

//   @override
//   double get minExtent => height + topPadding;

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return true;
//   }
// }
