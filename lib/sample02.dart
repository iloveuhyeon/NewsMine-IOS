import 'package:flutter/material.dart';

sample02(IconData icon, String text, bool choice) {
  return Column(
    children: [
      if (!choice)
        Container(
          padding: const EdgeInsetsDirectional.all(6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xff366dff),
            border: Border.all(
              color: const Color(0xff366dff),
              width: 3,
            ),
          ),
          child: Center(
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
        ),
      if (choice)
        Container(
          padding: const EdgeInsetsDirectional.all(6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: const Color(0xff366dff),
              width: 3,
            ),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                print(text);
              },
              icon: Icon(icon),
              color: const Color(0xff366dff),
              iconSize: 30,
              splashRadius: 30,
            ),
          ),
        ),
      const SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: Color(0xff366dff),
        ),
      )
    ],
  );
}
