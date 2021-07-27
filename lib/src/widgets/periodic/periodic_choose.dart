import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/common.dart';
import '../../utils/periodic_provider.dart';
import '../common/gap.dart';

///PeriodicChoose widget
class PeriodicChoose extends ConsumerWidget {
  ///Current frequency.
  final Frequency currentFrequency;

  ///When frequency changes.
  final void Function(Frequency?)? onFrequencyChanged;

  ///Default constructor for PeriodicChoose.
  const PeriodicChoose({
    required this.currentFrequency,
    required this.onFrequencyChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final config = watch(configProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${config.textConfig.frequency}:'),
        Gap.small(),
        DropdownButtonFormField<Frequency>(
          decoration: config.frequencyDecoration,
          dropdownColor: config.frequencyMenuColor,
          items: Frequency.values
              .map(
                (f) => DropdownMenuItem<Frequency>(
                  value: f,
                  child: Text(f.text(config.textConfig)),
                ),
              )
              .toList(),
          onChanged: onFrequencyChanged,
          value: currentFrequency,
        ),
      ],
    );
  }
}
