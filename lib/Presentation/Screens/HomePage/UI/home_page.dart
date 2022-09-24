import 'package:dynamic_app_icon_app/Presentation/Components/spacer.dart';
import 'package:dynamic_app_icon_app/Presentation/Declarations/Images/image_files.dart';
import 'package:dynamic_app_icon_app/Presentation/Declarations/constants.dart';

import '../../../Components/app_bar.dart';
import 'package:flutter/material.dart';

import '../../../Components/primary_btn.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int iconIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(appBarTitle: widget.title),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildIconTile(0, 'red'),
              buildIconTile(1, 'dark'),
              buildIconTile(2, 'blue'),
              HeightSpacer(myHeight: kSpacing),
              Padding(
                padding: EdgeInsets.only(bottom: kSpacing * 2),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child:
                        PrimaryBtn(btnFun: () {}, btnText: 'Change app icon')),
              ),
            ],
          )),
    );
  }

  Widget buildIconTile(int index, String themeTxt) => Padding(
        padding: EdgeInsets.all(kSpacing),
        child: GestureDetector(
          onTap: () => setState(() => iconIndex = index),
          child: Row(
            children: [
              Image.asset(
                imagefiles[index],
                width: 45,
                height: 45,
              ),
              WidthSpacer(myWidth: kSpacing),
              Text(themeTxt, style: const TextStyle(fontSize: 25)),
               WidthSpacer(myWidth: kSpacing),
              iconIndex == index
                  ? const Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                      size: 30,
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      );
}
