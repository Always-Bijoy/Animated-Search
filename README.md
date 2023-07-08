<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

## Animated Search For Flutter App

The `AnimatedSearch` widget is a customizable animated search bar widget for Flutter that can be used to implement a search feature in your app. It displays a search box that can be expanded by clicking on the search icon, and when expanded, it displays a `TextField` that can be used to enter search queries.


## Features

- Customizable search animation widget
- Expandable search bar with `TextField` for entering search queries

#### ANIMATED SEARCH
<img src="https://raw.githubusercontent.com/Always-Bijoy/Animated-Search/main/screenshot/Screenshot.png">

# Installing
To install the package, add the following to your project's `pubspec.yaml` file:

### 1. Depend on it
Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  animated_search: ^0.0.5
```

### 2. Install it
After adding the dependency, run the following command in the terminal to install the package:

You can install packages from the command line:

with `pub`:

```
$ pub get
```

with `Flutter`:

```
$ flutter pub get
```

### 3. Import it

Now in your `Dart` code, you can use:

```dart
import 'package:animated_search/animated_search.dart';
```

## Usage
To use the `AnimatedSearch` widget, include it in your build method as shown below:
`AnimatedSearch` is a _Stateful Widget_ that produces search animations.
Include it in your `build` method like:

```dart
 AnimatedSearch(
   width: 0.7,
   textEditingController: _textEditingController,
   startIcon: Icons.search,
   closeIcon: Icons.close,
   iconColor: Colors.white,
   cursorColor: Colors.white,
   decoration: InputDecoration(
     hintText: 'Search',
     hintStyle: TextStyle(color: Colors.grey[300]),
     border: InputBorder.none,
   ),
   onChanged: (String value) {
     // handle search query
   },
 )
```
## Customization
The `AnimatedSearch` widget can be customized by providing values for its constructor parameters. For example, you can customize the appearance and behavior of the widget by providing a custom width, controller, icons, colors, and decoration for the search query text field.


```dart
AnimatedSearch(
  width: 0.7, // Width of the search bar when expanded (default: 0.7)
  textEditingController: myController, // A controller for the search query text field
  startIcon: Icons.search, // Icon to show when search bar is folded
  closeIcon: Icons.close, // Icon to show when search bar is expanded
  iconColor: Colors.white, // Color of the search icon (default: Colors.white)
  cursorColor: Colors.white, // Color of the search query text field cursor (default: Colors.white)
  onChanged: (String value) {}, // A callback to handle changes in the search query text field
  decoration: InputDecoration( // Custom decoration for the search query text field
    hintText: 'Search',
    hintStyle: TextStyle(color: Colors.grey[300]),
    border: InputBorder.none,
  ),
);

```


## Contributions

Contributions are welcome! If you find a bug or would like to suggest a new feature, please open an issue or submit a pull request.

## License
This package is licensed under the MIT License. See the LICENSE file for details.

