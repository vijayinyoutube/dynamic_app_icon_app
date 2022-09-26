import 'package:flutter/material.dart';

import '../Declarations/constants.dart';

class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn({Key? key, required this.btnText, required this.btnFun})
      : super(key: key);
  final String btnText;
  final Function btnFun;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => btnFun(),
      style: getBtnStyle(context),
      child: Text(
        btnText,
        style: const TextStyle(fontSize: 18.00),
      ),
    );
  }

  getBtnStyle(context) => ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: kBorderRadius / 2),
      backgroundColor: primaryColor,
      fixedSize: Size(MediaQuery.of(context).size.width - 40, 47),
      textStyle: const TextStyle(fontWeight: FontWeight.bold));
}
