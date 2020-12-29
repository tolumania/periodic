import 'package:customtogglebuttons/customtogglebuttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../utils/periodic_provider.dart';

///Month widget
///
///Choose from 1 to 31 days and/or last day
///for your recurring pattern.
class Month extends ConsumerWidget {
  ///Default constructor for Month.
  const Month({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final config = watch(configProvider);
    final data = watch(periodicProvider.state);
    final size =
        config.monthConfig.size ?? MediaQuery.of(context).size.width / 14;

    return Container(
      child: CustomToggleButtons(
        color: config.monthConfig.unselectedTextColor,
        elevation: config.monthConfig.elevation,
        fillColor: config.monthConfig.selectedColor,
        onPressed: (d) => _updateDayOfMonth(context, d),
        constraints: BoxConstraints(
          minWidth: size,
          minHeight: size,
        ),
        runSpacing: config.monthConfig.spacing,
        selectedColor: config.monthConfig.selectedTextColor,
        splashColor: config.monthConfig.splashColor,
        unselectedFillColor: config.monthConfig.unselectedColor,
        children: [
          ...List<int>.generate(31, (i) => i + 1)
              .map(
                (d) => Container(
                  child: Center(child: Text('$d')),
                  width: size,
                  height: size,
                ),
              )
              .toList(),
          Container(
            child: Center(child: Text('Last day')),
            width: size * 4,
            height: size,
          ),
        ],
        isSelected: [
          ...List.generate(31, (i) => i).map((d) {
            return data.daysOfMonth.contains(d);
          }).toList(),
          data.lastDay,
        ],
      ),
    );
  }

  void _updateDayOfMonth(BuildContext context, int dayIndex) {
    if (dayIndex == 31) {
      context.read(periodicProvider).toogleLastDay();
    } else {
      context.read(periodicProvider).dayOfMonth(dayIndex);
    }
  }
}
