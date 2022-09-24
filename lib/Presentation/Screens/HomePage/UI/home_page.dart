import 'package:dynamic_app_icon_app/Presentation/Declarations/constants.dart';

import '../../../Components/app_bar.dart';
import 'package:flutter/material.dart';

import '../../../Components/primary_btn.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(appBarTitle: title),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: EdgeInsets.only(bottom: kSpacing*2),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: PrimaryBtn(btnFun: () {}, btnText: 'Change app icon')),
        ),
      ),
    );
  }
}
