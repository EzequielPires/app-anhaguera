import 'package:flutter/material.dart';

class DestinationModel {
  final String label;
  final Widget icon;
  final Widget? selectedIcon;
  final Widget? page;

  const DestinationModel({required this.label, required this.icon, this.selectedIcon, this.page});
}