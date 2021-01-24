import 'package:flutter/material.dart';
import 'item_config.dart';
import 'text_config.dart';

///PeriodicConfig
///
///General configuration for Periodic widget.
class PeriodicConfig {
  ///Frequency input decoration.
  final InputDecoration frequencyDecoration;

  ///Month item configuration
  final PeriodicItemConfig monthConfig;

  ///Week item configuration
  final PeriodicItemConfig weekConfig;

  ///Alignment for interval widget
  final Alignment horizontalAlignment;

  ///Menu color for Frequency
  final Color frequencyMenuColor;

  ///Texts in the widget
  final PeriodicTextConfig textConfig;

  ///Color of the icons
  final Color iconsColor;

  ///Default constructor for PeriodicConfig
  PeriodicConfig({
    this.frequencyDecoration,
    this.frequencyMenuColor = Colors.white,
    this.horizontalAlignment = Alignment.center,
    this.iconsColor = Colors.black87,
    this.monthConfig = const PeriodicItemConfig(),
    this.textConfig = const PeriodicTextConfig(),
    this.weekConfig = const PeriodicItemConfig(),
  });
}
