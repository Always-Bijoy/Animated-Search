import 'package:flutter/cupertino.dart';

import '../../animated_search.dart';

/// A widget that displays an animated search box that expands when clicked.
///
/// The `AnimatedSearch` widget can be used to implement a search feature in your app.
/// It displays a search box that can be expanded by clicking on the search icon.
/// When expanded, it displays a `TextField` that can be used to enter search queries.
///
/// Example usage:
///
/// ```
/// AnimatedSearch(
///   width: 0.7,
///   textEditingController: _textEditingController,
///   startIcon: Icons.search,
///   closeIcon: Icons.close,
///   iconColor: Colors.white,
///   cursorColor: Colors.white,
///   decoration: InputDecoration(
///     hintText: 'Search',
///     hintStyle: TextStyle(color: Colors.grey[300]),
///     border: InputBorder.none,
///   ),
///   onChanged: (String value) {
///     // handle search query
///   },
/// )
/// ```
class AnimatedSearch extends StatefulWidget {
  /// Creates an `AnimatedSearch` widget.
  ///
  /// The `width` parameter is the width of the search box when expanded.
  ///
  /// The `textEditingController` parameter is the controller for the `TextField`.
  ///
  /// The `startIcon` parameter is the icon displayed when the search box is folded.
  ///
  /// The `closeIcon` parameter is the icon displayed when the search box is expanded.
  ///
  /// The `iconColor` parameter is the color of the search icons.
  ///
  /// The `cursorColor` parameter is the color of the cursor in the `TextField`.
  ///
  /// The `onChanged` parameter is a callback that is called when the text in the `TextField` changes.
  ///
  /// The `decoration` parameter is the decoration for the `TextField`.
  const AnimatedSearch({
    Key? key,
    this.width = 0.7,
    this.textEditingController,
    this.startIcon = Icons.search,
    this.closeIcon = Icons.close,
    this.iconColor = Colors.white,
    this.cursorColor = Colors.white,
    this.onChanged,
    this.decoration,
  }) : super(key: key);

  /// The width of the search box when expanded.
  /// 0.0 - 1.0
  final double width;

  /// The controller for the `TextField`.
  final TextEditingController? textEditingController;

  /// The icon displayed when the search box is folded.
  final IconData? startIcon;

  /// The icon displayed when the search box is expanded.
  final IconData? closeIcon;

  /// The color of the search icons.
  final Color? iconColor;

  /// The color of the cursor in the `TextField`.
  final Color? cursorColor;

  /// A callback that is called when the text in the `TextField` changes.
  final Function(String)? onChanged;

  /// The decoration for the `TextField`.
  final InputDecoration? decoration;

  @override
  State<AnimatedSearch> createState() => _AnimatedSearchState();
}

class _AnimatedSearchState extends State<AnimatedSearch> {
  bool isFolded = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 55,
      width: isFolded ? width / 7 : width * widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(42.0),
        color: Colors.grey.shade400,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 16),
              child: !isFolded
                  ? TextField(
                      controller: widget.textEditingController,
                      autofocus: true,
                      cursorColor: widget.cursorColor,
                      decoration: widget.decoration ??
                          InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.grey[300]),
                              border: InputBorder.none),
                      onChanged: widget.onChanged,
                    )
                  : null,
            ),
          ),
          AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isFolded = !isFolded;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: widget.textEditingController!.text.isEmpty
                      ? Icon(
                          isFolded ? widget.startIcon : widget.closeIcon,
                          color: widget.iconColor,
                          size: 26,
                        )
                      : const SizedBox(),
                ),
              )),
        ],
      ),
    );
  }
}
