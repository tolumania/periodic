import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../utils/periodic_provider.dart';
import '../common/gap.dart';
import '../common/interval.dart';
import '../common/week.dart';

///Weekly widget.
class Weekly extends ConsumerWidget {
  ///Default constructor for Weekly.
  const Weekly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final data = watch(periodicProvider);

    return Column(
      children: [
        Center(child: IntervalPicker()),
        Gap.medium(),
        Week(
          daysOfWeek: data.daysOfWeek,
          onDayPressed: (d) => _updateDayOfWeek(context, d),
        ),
      ],
    );
  }

  void _updateDayOfWeek(BuildContext context, int dayIndex) {
    context.read(periodicProvider).dayOfWeek(dayIndex);
  }
}
