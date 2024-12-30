import 'package:flutter/material.dart';

/// Represents a single spotlight destination in the navigation bar.
/// Each item can be highlighted with a spotlight effect when selected.
class ForstyFloatItem {
  /// The icon to display in the spotlight
  final IconData icon;

  /// Optional label text to display below the icon
  final String? label;

  /// The screen/widget to display when this spotlight is active
  final Widget screen;

  const ForstyFloatItem({
    required this.icon,
    required this.screen,
    this.label,
  });
}
