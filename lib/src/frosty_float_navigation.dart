import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:frosty_float_navigation/src/frosty_float_item.dart';

class FrostyFloatNavigation extends StatefulWidget {
  final List<ForstyFloatItem> item;

  const FrostyFloatNavigation({
    super.key,
    required this.item,
  });

  @override
  State<FrostyFloatNavigation> createState() => _FrostyFloatNavigationState();
}

class _FrostyFloatNavigationState extends State<FrostyFloatNavigation> {
  late int _selectedIndex;
  // Extract constants
  static const double _blurAmount = 10.0;
  static const double _borderRadius = 100.0;

  static const double _containerOpacity = 0.3;
  static const double _borderOpacity = 0.2;

  // Memoize padding values
  static const EdgeInsets _outerPadding = EdgeInsets.all(16.0);

  static const EdgeInsets _innerPadding = EdgeInsets.all(8.0);

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildMenuItem(ForstyFloatItem menu, int index) {
    final isSelected = _selectedIndex == index;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF2A4D69) : Colors.transparent,
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              menu.icon,
              color: isSelected ? Color(0xFFFFFFFF) : Color(0xFFBDBDBD),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: IndexedStack(
        index: _selectedIndex,
        children: widget.item.map((item) => item.screen).toList(),
      ),
      bottomNavigationBar: Padding(
        padding: _outerPadding,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(_borderRadius),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: _blurAmount,
              sigmaY: _blurAmount,
            ),
            child: Container(
              padding: _innerPadding,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: _containerOpacity),
                borderRadius: BorderRadius.circular(_borderRadius),
                border: Border.all(
                  color: Colors.white.withValues(alpha: _borderOpacity),
                ),
              ),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    widget.item.length,
                    (index) => _buildMenuItem(widget.item[index], index),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
