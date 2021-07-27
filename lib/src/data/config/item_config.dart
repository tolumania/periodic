import 'package:flutter/material.dart';

///PeriodicItemConfig
///
///UI configuration for week and
///month items.
///
///You can provide a [selectedColor] and/or [unselectedColor]
///for background, [selectedTextColor] and/or [unselectedTextColor]
///for the text.
///
///There is a [size] property to change item size.
class PeriodicItemConfig {
  ///Background color of a item when is selected
  final Color selectedColor;

  ///Text color of a item when is selected.
  final Color selectedTextColor;

  ///Background color of a item when is not selected.
  final Color unselectedColor;

  ///Text color of a item when is not selected.
  final Color unselectedTextColor;

  ///Elevation of an item when is not selected.
  final double elevation;

  ///Splash color of the item.
  final Color splashColor;

  ///Vertial spacing between items.
  ///
  ///For rows at Month view.
  final double spacing;

  ///Size of an item.
  final double? size;

  ///Default constructor for PeriodicItemConfig
  const PeriodicItemConfig({
    this.elevation = 0.0,
    this.selectedColor = Colors.blue,
    this.selectedTextColor = Colors.white,
    this.size,
    this.spacing = 0.0,
    this.splashColor = Colors.blue,
    this.unselectedColor = Colors.white,
    this.unselectedTextColor = Colors.black,
  });
}
