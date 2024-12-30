# Frosty Float Navigation 🧊🚀

A sleek and modern frosted glass-style floating bottom navigation bar for Flutter applications.

## ✨ Features

* 🌟 **Frosted Glass Effect**: Blurred background with transparent navigation bar
* 🧩 **Customizable Items**: Add dynamic navigation items with icons and screens
* 🎯 **Smooth Navigation**: Seamless transitions between screens
* 🛠️ **Easy Integration**: Minimal setup required
* 🎨 **Custom Styling**: Easily customize the navigation bar's appearance, including padding, colors, and opacity.

## 📲 Installation

Add the following dependency in your `pubspec.yaml`:

```yaml
dependencies:
  frosty_float_navigation: ^1.0.2
```

Then, run:

```bash
flutter pub get
```

## 🛠️ Usage

```dart
import 'package:frosty_float_navigation/frosty_float_navigation.dart';
import 'package:iconsax/iconsax.dart';
import '.......';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FrostyFloatNavigation(
        items: [
          ForstyFloatItem(
            icon: Iconsax.home,
            screen: HomeScreen(),
          ),
          ForstyFloatItem(
            icon: Iconsax.search,
            screen: SearchScreen(),
          ),
          ForstyFloatItem(
            icon: Iconsax.settings,
            screen: SettingsScreen(),
          ),
        ],
        // Custom Styling
        style: FrostyFloatNavigationStyle(
          blurAmount: 8.0,
          borderRadius: 50.0,
          containerOpacity: 0.5,
          borderOpacity: 0.3,
          navigationPadding: EdgeInsets.all(20.0),  // Outer padding for the navigation bar
          itemPadding: EdgeInsets.all(12.0),  // Padding for each navigation item
          selectedIconColor: Colors.white,  // Color for selected icon
          selectedContainerColor: Colors.blueAccent,  // Color for the selected item container
          unselectedIconColor: Colors.grey,  // Color for unselected icon
        ),
      ),
    );
  }
}
```

## 📝 API Reference

### FrostyFloatNavigation

| Property | Type | Description |
|----------|------|-------------|
| items | `List<ForstyFloatItem>` | List of navigation items |
| style | `FrostyFloatNavigationStyle` | Custom styling for the navigation bar (optional) |

### ForstyFloatItem

| Property | Type | Description |
|----------|------|-------------|
| icon | `IconData` | Icon for the navigation item |
| screen | `Widget` | Screen to display on tap |

### FrostyFloatNavigationStyle

| Property | Type | Description |
|----------|------|-------------|
| blurAmount | `double` | Amount of blur for the background (default: 10.0) |
| borderRadius | `double` | Border radius for the navigation bar (default: 100.0) |
| containerOpacity | `double` | Opacity of the container (default: 0.3) |
| borderOpacity | `double` | Opacity of the border (default: 0.2) |
| navigationPadding | `EdgeInsets` | Padding for the outer navigation container (default: `EdgeInsets.all(16.0)`) |
| itemPadding | `EdgeInsets` | Padding for each navigation item (default: `EdgeInsets.all(8.0)`) |
| selectedIconColor | `Color` | Color of the selected icon (default: white) |
| selectedContainerColor | `Color` | Color of the selected item container (default: `0xFF2A4D69`) |
| unselectedIconColor | `Color` | Color of the unselected icon (default: `0xFFBDBDBD`) |

## 🎨 Customization

You can customize colors, icon sizes, and navigation logic directly in the `FrostyFloatNavigation` widget.

## 🤝 Contributing

Feel free to submit issues or pull requests. Contributions are always welcome!

## 📜 License

This project is licensed under the MIT License.