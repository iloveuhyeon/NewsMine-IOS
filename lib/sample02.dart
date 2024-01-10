import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

sample02(IconData icon, String text) {
  return Column(
    children: [
      Container(
        width: 70,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff0047ff),
        ),
        child: Icon(
          icon,
          size: 40,
          color: Colors.white,
        ),
      ),
      Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Color(0xff0047ff),
        ),
      )
    ],
  );
}
