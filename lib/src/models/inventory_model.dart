import 'package:flutter/material.dart';

class InventoryModel {
  int id;
  String title;
  String description;
  String icon;
  Color color;

  InventoryModel({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}
