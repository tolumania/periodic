import 'package:flutter/material.dart';
import '../../data/common.dart';
import '../frequencies/daily.dart';
import '../frequencies/monthly.dart';
import '../frequencies/weekly.dart';
import '../frequencies/yearly.dart';

///PeriodicSwitch widget.
class PeriodicSwitch extends StatelessWidget {
  ///Current frequency.
  final Frequency frequency;

  ///Default constructor for PeriodicSwitch.
  const PeriodicSwitch({@required this.frequency, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (frequency == Frequency.daily) {
      return Daily();
    } else if (frequency == Frequency.weekly) {
      return Weekly();
    } else if (frequency == Frequency.monthly) {
      return Monthly();
    } else {
      return Yearly();
    }
  }
}
