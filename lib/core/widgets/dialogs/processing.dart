import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProcessingWidget<T> extends StatefulWidget {
  const ProcessingWidget({
    super.key,
    required this.action,
    required this.onResult,
  });

  final Future<T> Function(BuildContext context) action;
  final Future<void> Function(BuildContext context, T result) onResult;

  @override
  State<ProcessingWidget> createState() => _ProcessingWidgetState();
}

class _ProcessingWidgetState extends State<ProcessingWidget> {
  @override
  void initState() {
    super.initState();
    widget.action(context).then(
          (dynamic value) => widget.onResult(
            context,
            value,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator.adaptive();
  }
}
