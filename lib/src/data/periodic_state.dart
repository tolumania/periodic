import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'common.dart';
import 'periodic_data/periodic_data.dart';

///PeriodicState
class PeriodicState extends StateNotifier<PeriodicData> {
  ///Default constructor for PeriodicState
  PeriodicState({PeriodicData initialData})
      : super(initialData ??
            PeriodicData(
                every: 1,
                frequency: Frequency.daily,
                daysOfMonth: [],
                daysOfWeek: [],
                daysOfWeeks: [[], [], [], []]));

  ///Current state
  PeriodicData get current => state;

  ///Change frequency
  void changeFrequency(Frequency frequency) {
    state = state.copyWith.call(frequency: frequency);
  }

  ///Change every amount
  void changeEvery(int amount) {
    state = state.copyWith.call(every: amount);
  }

  ///Add or remove a day from `dayOfWeek` list.
  void dayOfWeek(int dayIndex) {
    if (state.daysOfWeek.contains(dayIndex)) {
      state =
          state.copyWith.call(daysOfWeek: state.daysOfWeek..remove(dayIndex));
    } else {
      state = state.copyWith.call(daysOfWeek: state.daysOfWeek..add(dayIndex));
    }
  }

  ///Add or remove a day from `dayOfWeek` list, this is for `dayOfMonth`
  ///mode for `month`.
  void daysOfWeeks(int week, int dayIndex) {
    if (state.daysOfWeeks[week].contains(dayIndex)) {
      state = state.copyWith
          .call(daysOfWeeks: state.daysOfWeeks..[week].remove(dayIndex));
    } else {
      state = state.copyWith
          .call(daysOfWeeks: state.daysOfWeeks..[week].add(dayIndex));
    }
  }

  ///Add or remove a day from `dayOfMonth` list.
  void dayOfMonth(int dayIndex) {
    if (state.daysOfMonth.contains(dayIndex)) {
      state =
          state.copyWith.call(daysOfMonth: state.daysOfMonth..remove(dayIndex));
    } else {
      state =
          state.copyWith.call(daysOfMonth: state.daysOfMonth..add(dayIndex));
    }
  }

  ///Toggle `lastDay` option for `dayOfMonth`.
  void toogleLastDay() {
    state = state.copyWith.call(lastDay: !state.lastDay);
  }

  ///Change `monthlyType` between `dayOfMonth` and
  ///`dayOfWeek`.
  void changeMonthlyType(MonthlyType monthlyType) {
    state = state.copyWith.call(monthlyType: monthlyType);
  }
}
