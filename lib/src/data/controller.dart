import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'common.dart';
import 'periodic_data/periodic_data.dart';

///PeriodicController
class PeriodicController extends StateNotifier<PeriodicData> {
  ///Default constructor for PeriodicController
  PeriodicController()
      : super(PeriodicData(
            every: 1,
            frequency: Frequency.daily,
            daysOfMonth: [],
            daysOfWeek: [],
            daysOfWeeks: [[], [], [], []]));

  ///Current data
  PeriodicData get current => state;

  // ignore: use_setters_to_change_properties
  ///
  void update(PeriodicData data) {
    state = data;
  }
}
