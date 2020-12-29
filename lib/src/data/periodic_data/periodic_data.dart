import 'package:freezed_annotation/freezed_annotation.dart';
import '../common.dart';

part 'periodic_data.freezed.dart';

///PeriodicData
///
///Result and state for Periodic widget.
///[frequency] and [every] are required.
@freezed
abstract class PeriodicData with _$PeriodicData {
  ///
  factory PeriodicData({
    @Default(MonthlyType.dayOfMonth) MonthlyType monthlyType,
    @Default(false) bool lastDay,
    @required Frequency frequency,
    @required int every,
    List<List<int>> daysOfWeeks,
    List<int> daysOfMonth,
    List<int> daysOfWeek,
  }) = _PeriodicData;
}
