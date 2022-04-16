// From: https://www.youtube.com/watch?v=Bxs8Zy2O4wk

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/measure_size_render_object.dart';

/// Creates the modal popup for the app. Please use this as it follows the Figma design.
///
/// The [title] is the displayed at the top of the popup.
/// The [child] widget is displayed in the center of the card.
/// The [listView] is an optional parameter to convert the popup into a [ListView].
/// If true, the height of the popup will be [0.8 * screen height].
///
/// By default, the popup auto resizes to fit the child widget.
void usePopupCard({
  required BuildContext context,
  required String title,
  required Widget child,
  bool listView = false,
}) {
  Navigator.of(context).push(_PopupCardRoute(
      builder: (context) =>
          _PopupCard(title: title, child: child, listView: listView)));
}

class _PopupCard extends StatefulWidget {
  final String title;
  final Widget child;
  final bool listView;

  const _PopupCard(
      {Key? key,
      required this.title,
      required this.child,
      this.listView = false})
      : super(key: key);

  @override
  State<_PopupCard> createState() => _PopupCardState();
}

class _PopupCardState extends State<_PopupCard> {
  var _size = Size.zero;

  void onClose() {
    Navigator.of(context).pop();
  }

  List<Widget> buildChildren() {
    return [
      Align(
          alignment: Alignment.topLeft,
          child: IconButton(
              onPressed: onClose,
              icon: const Icon(Icons.close_rounded, color: Styles.secondary))),
      Align(
          alignment: Alignment.center,
          child: Text(
            widget.title,
            style: Styles.headerMainText.copyWith(color: Styles.primary),
          )),
      const SizedBox(height: Styles.mainSpacing),
      widget.listView
          ? widget.child
          : MeasureSize(
              onChange: (size) {
                setState(() {
                  _size = size;
                });
              },
              child: widget.child),
    ];
  }

  @override
  Widget build(BuildContext context) {
    double height;
    if (widget.listView) {
      height = MediaQuery.of(context).size.height * 0.8;
    } else {
      height = _size.height + 125.0;
    }

    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Scaffold(
            backgroundColor: Styles.transparent,
            body: Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: Styles.white,
                      border: Border.all(
                        color: Styles.primary,
                        width: 1.0,
                      ),
                      borderRadius: Styles.mainBorderRadius,
                      boxShadow: const [
                        BoxShadow(
                            color: Styles.white,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 5.0,
                            spreadRadius: 0.0)
                      ]),
                  alignment: Alignment.center,
                  height: height,
                  width: MediaQuery.of(context).size.width,
                  child: widget.listView
                      ? ListView(
                          children: buildChildren(),
                        )
                      : Column(children: buildChildren()),
                ))));
  }
}

class _PopupCardRoute<T> extends PageRoute<T> {
  /// Custom [PageRoute] that creates an overlay dialog (popup effect).
  _PopupCardRoute({
    required WidgetBuilder builder,
    RouteSettings settings = const RouteSettings(),
    bool fullscreenDialog = false,
  })  : _builder = builder,
        super(settings: settings, fullscreenDialog: fullscreenDialog);

  final WidgetBuilder _builder;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 400);

  @override
  bool get maintainState => true;

  @override
  Color get barrierColor => Styles.transparent;

  @override
  String get barrierLabel => 'Popup dialog open';

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    const begin = Offset(0.0, 1.0);
    const end = Offset.zero;
    const curve = Curves.ease;
    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return _builder(context);
  }
}
