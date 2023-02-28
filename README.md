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

## Animated Search

A customizable animated search bar widget for Flutter.


## Features

The `AnimatedSearch` widget can be used to implement a search feature in your app.
It displays a search box that can be expanded by clicking on the search icon.
When expanded, it displays a `TextField` that can be used to enter search queries.

# Installing

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  animated_search: ^0.0.2
```

### 2. Install it

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

`AnimatedSearch` is a _Stateful Widget_ that produces search animations.
Include it in your `build` method like:

```
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
You can customize the appearance and behavior of the `AnimatedSearch` widget by providing values for its constructor parameters:

```
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
