import 'package:flutter/material.dart';

Widget shimmerBox({double? height, double? weight}) {
  return Container(
    height: height,
    width: weight,
    decoration: BoxDecoration(
      color: Colors.black12.withOpacity(0.05),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
}
