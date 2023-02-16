import 'package:flutter/material.dart';

Widget CustomeListWidget({
  required BuildContext context,
}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.08,
    width: MediaQuery.of(context).size.width,
    child: Text("Abebe Zeleke"),
  );
}
