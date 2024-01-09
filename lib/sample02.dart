import 'package:flutter/material.dart';

Column sample02(IconData icon, String text) {
  return Column(
    children: [
      Icon(
        icon,
        size: 70,
        color: Colors.blue,
      ),
      Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Colors.blue,
        ),
      )
    ],
  );
}
