import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../utils/periodic_provider.dart';
import 'week.dart';

///MultiWeek widget
///
///Choose from 1 to 7 days for your recurring pattern.
///This shows 4 weeks representing a Month.
class MultiWeek extends ConsumerWidget {
  ///Default constructor for MultiWeek.
  const MultiWeek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final data = watch(periodicProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Week(daysOfWeek: data.daysOfWeeks[0], onDayPressed: (d) => _updateDayOfWeek(context, 0, d)),
        Week(daysOfWeek: data.daysOfWeeks[1], onDayPressed: (d) => _updateDayOfWeek(context, 1, d)),
        Week(daysOfWeek: data.daysOfWeeks[2], onDayPressed: (d) => _updateDayOfWeek(context, 2, d)),
        Week(daysOfWeek: data.daysOfWeeks[3], onDayPressed: (d) => _updateDayOfWeek(context, 3, d)),
      ],
    );
  }

  void _updateDayOfWeek(BuildContext context, int week, int dayIndex) {
    context.read(periodicProvider).daysOfWeeks(week, dayIndex);
  }
}
