import 'package:flutter/material.dart';

sample02(IconData icon, String text, bool choice) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsetsDirectional.all(6),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff366dff),
        ),
        child: IconButton(
          onPressed: () {
            print(text);
          },
          icon: Icon(icon),
          color: Colors.white,
          iconSize: 30,
          splashRadius: 30,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Color(0xff366dff),
        ),
      )
    ],
  );
}
