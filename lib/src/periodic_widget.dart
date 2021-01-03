import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'data/common.dart';
import 'data/config/periodic_config.dart';
import 'data/controller.dart';
import 'data/periodic_data/periodic_data.dart';
import 'data/periodic_state.dart';
import 'utils/periodic_provider.dart';
import 'widgets/common/gap.dart';
import 'widgets/periodic/periodic_choose.dart';
import 'widgets/periodic/periodic_switch.dart';

///Periodic
///
///A simple widget to choose recurring patterns
///Very useful for scheduling and related.
///
///With [config] you can customize the widget and
///how it looks.
///
///You can pass a [initialData] to start with.
///
///To get results and current state, you can pass
///a [controller] and get the `current` property.
class Periodic extends StatelessWidget {
  ///Configuration
  ///
  ///Widget configuration like color, styles
  ///and elevation.
  final PeriodicConfig config;

  ///Initial data
  ///
  ///Data to start with. If you pass it, must be
  ///with all its params, lists must not be null.
  final PeriodicData initialData;

  ///Controller
  ///
  ///Interact with the widget through this controller.
  ///`current` property holds the data.
  final PeriodicController controller;

  ///Default constructor for Periodic widget
  const Periodic({
    Key key,
    this.config,
    this.controller,
    this.initialData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: _RawPeriodicWidget(
        periodicController: controller,
      ),
      overrides: [
        if (initialData != null)
          periodicProvider.overrideWithValue(
            PeriodicState(initialData: initialData),
          ),
        configProvider.overrideWithValue(
          config ?? PeriodicConfig(),
        ),
      ],
    );
  }
}

///Raw widget that holds all the data and
///children.
class _RawPeriodicWidget extends HookWidget {
  ///Controller that will be used
  final PeriodicController periodicController;

  ///Default constructor for _RawPeriodicWidget.
  const _RawPeriodicWidget({Key key, this.periodicController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = useProvider(periodicProvider.state);
    final stream = useProvider(periodicProvider).stream;

    useEffect(() {
      final controller = periodicController ?? PeriodicController();
      return stream.listen(controller.update).cancel;
    }, [stream]);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        PeriodicChoose(
          currentFrequency: data.frequency,
          onFrequencyChanged: (frequency) =>
              _onFrequencyChaged(context, frequency),
        ),
        Gap.large(),
        AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          transitionBuilder: (child, animation) => SizeTransition(
            axis: Axis.vertical,
            sizeFactor: animation,
            child: FadeTransition(
              child: child,
              opacity: animation,
            ),
          ),
          child: PeriodicSwitch(
            frequency: data.frequency,
            key: ObjectKey(data.frequency),
          ),
        ),
      ],
    );
  }

  void _onFrequencyChaged(BuildContext context, Frequency frequency) {
    context.read(periodicProvider).changeFrequency(frequency);
  }
}
