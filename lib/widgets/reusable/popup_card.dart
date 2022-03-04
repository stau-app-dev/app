import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';

/// Create a modal popup card. The child widget is displayed in the center of the card.
void usePopupCard(
    {required BuildContext context,
    required String title,
    required Widget child}) {
  Navigator.of(context).push(_PopupCardRoute(
      builder: (context) => _PopupCard(title: title, child: child)));
}

class _PopupCard extends StatefulWidget {
  final String title;
  final Widget child;

  const _PopupCard({Key? key, required this.title, required this.child})
      : super(key: key);

  @override
  State<_PopupCard> createState() => _PopupCardState();
}

class _PopupCardState extends State<_PopupCard> {
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
      Text(
        widget.title,
        style: Styles.headerMainText.copyWith(color: Styles.primary),
      ),
      const SizedBox(height: Styles.mainSpacing),
      widget.child,
    ];
  }

  @override
  Widget build(BuildContext context) {
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
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: buildChildren()),
                ))));
  }
}

// See: https://www.youtube.com/watch?v=Bxs8Zy2O4wk
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
