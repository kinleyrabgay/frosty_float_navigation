# Changelog

## 1.0.1 - Enhancements and Validation

### 🛠️ Improvements
- **Updated Alignment:** Changed `mainAxisAlignment` to `MainAxisAlignment.spaceBetween` in the bottom navigation bar for consistent spacing between items.

### 🚨 Validation
- **Minimum Item Count Assertion:** Added an assertion to ensure that the navigation bar requires at least **3 items** to function properly.

### 🧹 Refactoring
- Improved readability and maintainability of the `_buildMenuItem` method.
- Cleaned up unnecessary widget nesting.

### 🐞 Bug Fixes
- Addressed potential layout inconsistencies when fewer than 3 items were passed to the navigation bar.

---

**Note:** Ensure that the `item` list contains at least **3 items** when using `FrostyFloatNavigation`.

## 1.0.0 - Improvements and Refinements

### 🛠️ Improvements
- **Removed SafeArea:** The `SafeArea` widget was removed from the bottom navigation bar for a cleaner integration.
- **Simplified Menu Items:** Text elements were removed from navigation items, focusing purely on icons for a more minimalist design.
- **Improved Code Efficiency:** Removed redundant code to streamline widget behavior and improve maintainability.

### 🧹 Refactoring
- Updated `_buildMenuItem` to focus on icon rendering without unnecessary nesting.
- Optimized padding and decoration for better visual clarity.

### 🐞 Bug Fixes
- Fixed minor inconsistencies in navigation item rendering.

---

**Note:** Please update your dependencies and ensure compatibility with Flutter SDK `>=3.0.0`.

## 0.0.1 - Initial Release

### 🎉 Features
- Frosty floating bottom navigation bar with frosted glass design.
- Customizable navigation items with icons and screens.
- Supports dynamic item count with flexible configuration.

### 🛠️ Improvements
- Optimized performance with memoized constants.
- Clean and modular widget design for easy customization.

### 📦 Dependencies
- Flutter SDK version ^3.6.0
