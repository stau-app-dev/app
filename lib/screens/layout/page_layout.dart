import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/theme/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';

/// {@template page_layout}
/// Custom page layout for the app. Please use this as it follows the Figma design.
/// {@endtemplate}
class PageLayout extends StatelessWidget {
  /// The list of widgets to display.
  final List<Widget> children;

  /// Whether or not to make the page into a listView. Default is false.
  final bool listView;

  /// Function to call on refresh.
  final Function? onRefresh;

  /// Function to call when the back button is pressed.
  final Function? onBack;

  /// Whether or not to display safe areas. Default is false.
  final bool disableSafeArea;

  /// The value of the vertical padding. Defaults to [Styles.mainVerticalPadding].
  final double verticalPadding;

  /// The value of the horizontal padding. Defaults to [Styles.mainHorizontalPadding].
  final double horizontalPadding;

  /// The crossAxisAlignment of the children. Defaults to [CrossAxisAlignment.center].
  final CrossAxisAlignment crossAxisAlignment;

  /// Optional background widget to display behind the children.
  final Widget? background;

  /// Optional footer widget to display at the bottom of the page.
  final Widget? footer;

  /// {@macro page_layout}
  const PageLayout({
    Key? key,
    required this.children,
    this.listView = false,
    this.onRefresh,
    this.onBack,
    this.disableSafeArea = false,
    this.verticalPadding = Styles.mainVerticalPadding,
    this.horizontalPadding = Styles.mainHorizontalPadding,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.background,
    this.footer,
  }) : super(key: key);

  Widget pageWrapper() {
    return listView
        ? ListView(
            children: page(),
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
          )
        : Column(
            crossAxisAlignment: crossAxisAlignment,
            children: page(),
          );
  }

  Widget body() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: verticalPadding),
          ...children,
          if (!listView) Expanded(child: Container()),
          footer ?? const SizedBox(),
          SizedBox(height: verticalPadding),
        ],
      ),
    );
  }

  List<Widget> page() {
    return [
      onBack != null
          ? IconButton(
              onPressed: () {
                onBack!();
              },
              icon: const Padding(
                padding: EdgeInsets.only(left: 0),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                ),
              ),
            )
          : const SizedBox(height: 12),
      listView
          ? body()
          : Flexible(
              child: body(),
            ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: !disableSafeArea,
      left: !disableSafeArea,
      right: !disableSafeArea,
      bottom: !disableSafeArea,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          if (background != null) background!,
          onRefresh != null
              ? RefreshIndicator(
                  onRefresh: () async {
                    try {
                      await onRefresh!();
                    } catch (e) {
                      useCustomSnackbar(
                          context: context,
                          message: 'Error Refreshing',
                          type: ESnackBarType.failure);
                    }
                  },
                  child: pageWrapper(),
                )
              : pageWrapper()
        ],
      ),
    );
  }
}
