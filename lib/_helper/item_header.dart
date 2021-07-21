import 'package:flutter/material.dart';

Padding itemHeader({String? title}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      '$title',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  );
}
