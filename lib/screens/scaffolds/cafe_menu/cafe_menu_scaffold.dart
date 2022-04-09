import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staugustinechsnewapp/screens/main/cafe_menu/cafe_menu_screen.dart';
import 'package:staugustinechsnewapp/utilities/cafe_menu/cafe_menu_bloc.dart';
import 'package:staugustinechsnewapp/widgets/reusable/custom_snackbar.dart';

class CafeMenuScaffold extends StatefulWidget {
  const CafeMenuScaffold({Key? key}) : super(key: key);
  @override
  State<CafeMenuScaffold> createState() => _CafeMenuScaffoldState();
}

class _CafeMenuScaffoldState extends State<CafeMenuScaffold> {
  late CafeMenuBloc cafeMenuBloc;

  @override
  void initState() {
    cafeMenuBloc = BlocProvider.of<CafeMenuBloc>(context);
    cafeMenuBloc.add(const CafeMenuEvent.getCafeMenu());
    cafeMenuBloc.add(const CafeMenuEvent.getTodaysSpecials());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CafeMenuBloc, CafeMenuState>(
        listener: (context, state) {
      if (state.failure != null) {
        useCustomSnackbar(
            context: context,
            message: state.failure!.message,
            type: ESnackBarType.error);
        cafeMenuBloc.add(const CafeMenuEvent.resetFailSuccess());
      }
    }, builder: (context, state) {
      return CafeMenuScreen(
        todaysSpecials: state.todaysSpecials,
        menuItems: state.menuItems,
      );
    });
  }
}
