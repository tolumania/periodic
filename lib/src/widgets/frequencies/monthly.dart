import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:group_radio_button/group_radio_button.dart';
import '../../data/common.dart';
import '../../utils/periodic_provider.dart';
import '../common/gap.dart';
import '../common/interval.dart';
import '../common/month.dart';
import '../common/multi_week.dart';

///Monthly widget.
class Monthly extends ConsumerWidget {
  ///Default constructor for Monthly.
  const Monthly({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final data = watch(periodicProvider.state);

    return Column(
      children: [
        IntervalPicker(),
        Gap.medium(),
        MonthTypeChoose(),
        Gap.medium(),
        AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          transitionBuilder: (child, animation) => SizeTransition(
            sizeFactor: animation,
            axis: Axis.vertical,
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            key: ObjectKey(data.monthlyType),
            child: (data.monthlyType == MonthlyType.dayOfMonth)
                ? Month()
                : MultiWeek(),
          ),
        ),
      ],
    );
  }
}

///
class MonthTypeChoose extends ConsumerWidget {
  ///
  const MonthTypeChoose({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final data = watch(periodicProvider.state);
    final config = watch(configProvider);

    return RadioGroup<MonthlyType>.builder(
      groupValue: data.monthlyType,
      onChanged: (m) => _changeMonthlyType(context, m),
      direction: Axis.horizontal,
      items: MonthlyType.values,
      horizontalAlignment: MainAxisAlignment.center,
      itemBuilder: (item) => RadioButtonBuilder(
        item.text(config.textConfig),
        textPosition: RadioButtonTextPosition.left,
      ),
    );
  }

  void _changeMonthlyType(BuildContext context, MonthlyType monthlyType) {
    context.read(periodicProvider).changeMonthlyType(monthlyType);
  }
}
