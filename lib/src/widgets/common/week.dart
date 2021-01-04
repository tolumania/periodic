import 'package:auto_size_text/auto_size_text.dart';
import 'package:customtogglebuttons/customtogglebuttons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import '../../utils/periodic_provider.dart';

///Week widget
///
///Choose from 1 to 7 days for your recurring pattern.
class Week extends ConsumerWidget {
  ///When a single day is pressed.
  final Function(int) onDayPressed;

  ///List of selected days.
  final List<int> daysOfWeek;

  ///Default constructor for Week.
  const Week({
    @required this.daysOfWeek,
    @required this.onDayPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final config = watch(configProvider);
    final days = ['D', 'L', 'M', 'Mi', 'J', 'V', 'S'];
    final size =
        config.weekConfig.size ?? MediaQuery.of(context).size.width / 14;

    return CustomToggleButtons(
      color: config.weekConfig.unselectedTextColor,
      elevation: config.weekConfig.elevation,
      fillColor: config.weekConfig.selectedColor,
      onPressed: onDayPressed,
      runSpacing: config.weekConfig.spacing,
      selectedColor: config.weekConfig.selectedTextColor,
      splashColor: config.weekConfig.splashColor,
      unselectedFillColor: config.weekConfig.unselectedColor,
      constraints: BoxConstraints(
        minWidth: size,
        minHeight: size,
      ),
      children: days
          .map(
            (d) => Container(
              child: Center(child: AutoSizeText(d)),
              width: size,
              height: size,
            ),
          )
          .toList(),
      isSelected: List.generate(
          7, (index) => daysOfWeek.contains(index) ? true : false),
    );
  }
}
