import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../utils/periodic_provider.dart';
import 'gap.dart';

///IntervalPicker
///
///Widget to choose interval type.
///`daily`, `weekly`, `monthly` or `yearly`.
class IntervalPicker extends ConsumerWidget {
  ///Default constructor for IntervalPicker.
  const IntervalPicker({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final config = watch(configProvider);
    final data = watch(periodicProvider.state);

    return Container(
      alignment: config.horizontalAlignment,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Cada:'),
          Gap.small(),
          CustomNumberPicker(
            onValue: (a) => _onValueChanged(context, a),
            initialValue: data.every,
            maxValue: double.maxFinite.toInt(),
            minValue: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(
                color: Theme.of(context).dividerColor,
                width: 2.0,
              ),
            ),
          ),
          Gap.small(),
          Text('Dia(s)'),
        ],
      ),
    );
  }

  void _onValueChanged(BuildContext context, int amount) {
    context.read(periodicProvider).changeEvery(amount);
  }
}
