// From: https://stackoverflow.com/a/60868972/10014923

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// {@template measure_size_render_object}
/// Measures the size of a child and returns the size.
/// {@endtemplate}
class MeasureSize extends SingleChildRenderObjectWidget {
  /// Use with setState to update the size of something.
  final OnWidgetSizeChange onChange;

  /// {@macro measure_size_render_object}
  const MeasureSize({
    Key? key,
    required this.onChange,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _MeasureSizeRenderObject(onChange);
  }
}

typedef OnWidgetSizeChange = void Function(Size size);

class _MeasureSizeRenderObject extends RenderProxyBox {
  Size? oldSize;
  final OnWidgetSizeChange onChange;

  _MeasureSizeRenderObject(this.onChange);

  @override
  void performLayout() {
    super.performLayout();

    Size newSize = child!.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      onChange(newSize);
    });
  }
}
