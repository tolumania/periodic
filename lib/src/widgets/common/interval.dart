import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../periodic.dart';
import '../../utils/periodic_provider.dart';
import 'gap.dart';

///IntervalPicker
///
///Widget to choose interval type.
///`daily`, `weekly`, `monthly` or `yearly`.
class IntervalPicker extends ConsumerWidget {
  ///Default constructor for IntervalPicker.
  const IntervalPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final config = watch(configProvider);
    final data = watch(periodicProvider);

    return Container(
      alignment: config.horizontalAlignment,
      width: MediaQuery.of(context).size.width * 0.65,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('${config.textConfig.every}:'),
          Gap.small(),
          NumberPicker(
            onValue: (a) => _onValueChanged(context, a),
            initialValue: data.every,
            minValue: 1,
            iconsColor: config.iconsColor,
          ),
          Gap.small(),
          Text(data.frequency.amount(data.every, config.textConfig)),
        ],
      ),
    );
  }

  void _onValueChanged(BuildContext context, int amount) {
    context.read(periodicProvider).changeEvery(amount);
  }
}

///Custom Number Picker
class NumberPicker extends StatefulWidget {
  ///Initial value
  final int? initialValue;

  ///When number value changes
  final Function(int) onValue;

  ///Max value permited
  final int? maxValue;

  ///Min value permited
  final int minValue;

  ///Color of icons
  final Color? iconsColor;

  ///Default constructor for custom number picker
  const NumberPicker({
    required this.onValue,
    Key? key,
    this.iconsColor,
    this.initialValue,
    this.maxValue,
    this.minValue = 0,
  }) : super(key: key);

  @override
  _NumberPickerState createState() => _NumberPickerState();
}

class _NumberPickerState extends State<NumberPicker> {
  int _currentNumber = 0;

  @override
  void initState() {
    _currentNumber = widget.initialValue ?? 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Theme.of(context).dividerColor,
          width: 2.0,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap.small(),
          InkWell(
            onTap: _decrement,
            child: Icon(Icons.remove, color: widget.iconsColor),
            borderRadius: BorderRadius.circular(100.0),
          ),
          Gap.large(),
          Text(_currentNumber.toString()),
          Gap.large(),
          InkWell(
            borderRadius: BorderRadius.circular(100.0),
            onTap: _increment,
            child: Icon(Icons.add, color: widget.iconsColor),
          ),
          Gap.small(),
        ],
      ),
    );
  }

  void _increment() {
    if (_currentNumber < (widget.maxValue ?? double.maxFinite)) {
      setState(() {
        _currentNumber++;
        widget.onValue(_currentNumber);
      });
    }
  }

  void _decrement() {
    if (_currentNumber > widget.minValue) {
      setState(() {
        _currentNumber--;
        widget.onValue(_currentNumber);
      });
    }
  }
}
