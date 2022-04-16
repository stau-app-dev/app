import 'package:flutter/material.dart';
import 'package:staugustinechsnewapp/styles.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';

/// {@template page_layout}
/// Custom page layout for the app. Please use this as it follows the Figma design.
/// {@endtemplate}
class PageLayout extends StatelessWidget {
  /// {@macro page_layout}
  const PageLayout({
    Key? key,
    required this.children,
    this.listView = false,
    this.onRefresh,
    this.onBack,
    this.disableSafeArea = false,
    this.verticalPadding = Styles.mainVerticalPadding,
    this.horizontalPadding = Styles.mainOutsidePadding,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.background,
    this.footer,
  }) : super(key: key);

  final List<Widget> children;
  final bool listView;
  final Function? onRefresh;
  final Function? onBack;
  final bool disableSafeArea;
  final double verticalPadding;
  final double horizontalPadding;
  final CrossAxisAlignment crossAxisAlignment;
  final Widget? background;
  final Widget? footer;

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
