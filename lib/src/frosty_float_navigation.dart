import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:frosty_float_navigation/src/frosty_float_item.dart';

/// **Style Configuration for FrostyFloatNavigation**
class FrostyFloatNavigationStyle {
  final double blurAmount;
  final double borderRadius;
  final double containerOpacity;
  final double borderOpacity;
  final EdgeInsets navigationPadding;
  final EdgeInsets itemPadding;
  final Color selectedIconColor;
  final Color selectedContainerColor;
  final Color unselectedIconColor;

  const FrostyFloatNavigationStyle({
    this.blurAmount = 10.0,
    this.borderRadius = 100.0,
    this.containerOpacity = 0.3,
    this.borderOpacity = 0.2,
    this.navigationPadding = const EdgeInsets.all(16.0),
    this.itemPadding = const EdgeInsets.all(8.0),
    this.selectedIconColor = const Color(0xFFFFFFFF),
    this.selectedContainerColor = const Color(0xFF2A4D69),
    this.unselectedIconColor = const Color(0xFFBDBDBD),
  });
}

class FrostyFloatNavigation extends StatefulWidget {
  final List<ForstyFloatItem> item;
  final FrostyFloatNavigationStyle style;

  const FrostyFloatNavigation({
    super.key,
    required this.item,
    this.style = const FrostyFloatNavigationStyle(),
  }) : assert(
          item.length >= 3,
          'FrostyFloatNavigation requires at least 3 items.',
        );

  @override
  State<FrostyFloatNavigation> createState() => _FrostyFloatNavigationState();
}

class _FrostyFloatNavigationState extends State<FrostyFloatNavigation> {
  late int _selectedIndex;

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
    final style = widget.style;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: style.itemPadding,
        decoration: BoxDecoration(
          color: isSelected ? style.selectedContainerColor : Colors.transparent,
          borderRadius: BorderRadius.circular(style.borderRadius),
        ),
        child: Icon(
          menu.icon,
          color:
              isSelected ? style.selectedIconColor : style.unselectedIconColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final style = widget.style;

    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: IndexedStack(
        index: _selectedIndex,
        children: widget.item.map((item) => item.screen).toList(),
      ),
      bottomNavigationBar: Padding(
        padding: style.navigationPadding,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(style.borderRadius),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: style.blurAmount,
              sigmaY: style.blurAmount,
            ),
            child: Container(
              padding: style.itemPadding,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: style.containerOpacity),
                borderRadius: BorderRadius.circular(style.borderRadius),
                border: Border.all(
                  color: Colors.white.withValues(alpha: style.borderOpacity),
                ),
              ),
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
    );
  }
}
