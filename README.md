# Frosty Float Navigation 🧊🚀

A sleek and modern frosted glass-style floating bottom navigation bar for Flutter applications.

## ✨ Features

* 🌟 **Frosted Glass Effect**: Blurred background with transparent navigation bar
* 🧩 **Customizable Items**: Add dynamic navigation items with icons and screens
* 🎯 **Smooth Navigation**: Seamless transitions between screens
* 🛠️ **Easy Integration**: Minimal setup required

## 📲 Installation

Add the following dependency in your `pubspec.yaml`:

```yaml
dependencies:
  frosty_float_navigation: ^1.0.1
```

Then, run:

```bash
flutter pub get
```

## 🛠️ Usage

```dart
import 'package:frosty_float_navigation/frosty_float_navigation.dart';

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
            icon: Icons.home,
            screen: HomeScreen(),
          ),
          ForstyFloatItem(
            icon: Icons.search,
            screen: SearchScreen(),
          ),
          ForstyFloatItem(
            icon: Icons.settings,
            screen: SettingsScreen(),
          ),
        ],
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

### ForstyFloatItem

| Property | Type | Description |
|----------|------|-------------|
| icon | `IconData` | Icon for the navigation item |
| screen | `Widget` | Screen to display on tap |

## 🎨 Customization

You can customize colors, icon sizes, and navigation logic directly in the `FrostyFloatNavigation` widget.

## 🤝 Contributing

Feel free to submit issues or pull requests. Contributions are always welcome!

## 📜 License

This project is licensed under the MIT License.