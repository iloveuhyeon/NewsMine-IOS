import 'package:flutter/material.dart';

Icon circleIcon(bool onoff) {
  double circlesize = 10.0;
  Color circlecolor = Colors.white.withOpacity(0.6);
  if (onoff == true) {
    return Icon(
      Icons.circle,
      color: circlecolor,
      size: circlesize,
    );
  } else {
    return Icon(
      Icons.circle_outlined,
      color: circlecolor,
      size: circlesize,
    );
  }
}
