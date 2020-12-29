// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'periodic_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PeriodicDataTearOff {
  const _$PeriodicDataTearOff();

// ignore: unused_element
  _PeriodicData call(
      {MonthlyType monthlyType = MonthlyType.dayOfMonth,
      bool lastDay = false,
      @required Frequency frequency,
      @required int every,
      List<List<int>> daysOfWeeks,
      List<int> daysOfMonth,
      List<int> daysOfWeek}) {
    return _PeriodicData(
      monthlyType: monthlyType,
      lastDay: lastDay,
      frequency: frequency,
      every: every,
      daysOfWeeks: daysOfWeeks,
      daysOfMonth: daysOfMonth,
      daysOfWeek: daysOfWeek,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PeriodicData = _$PeriodicDataTearOff();

/// @nodoc
mixin _$PeriodicData {
  MonthlyType get monthlyType;
  bool get lastDay;
  Frequency get frequency;
  int get every;
  List<List<int>> get daysOfWeeks;
  List<int> get daysOfMonth;
  List<int> get daysOfWeek;

  $PeriodicDataCopyWith<PeriodicData> get copyWith;
}

/// @nodoc
abstract class $PeriodicDataCopyWith<$Res> {
  factory $PeriodicDataCopyWith(
          PeriodicData value, $Res Function(PeriodicData) then) =
      _$PeriodicDataCopyWithImpl<$Res>;
  $Res call(
      {MonthlyType monthlyType,
      bool lastDay,
      Frequency frequency,
      int every,
      List<List<int>> daysOfWeeks,
      List<int> daysOfMonth,
      List<int> daysOfWeek});
}

/// @nodoc
class _$PeriodicDataCopyWithImpl<$Res> implements $PeriodicDataCopyWith<$Res> {
  _$PeriodicDataCopyWithImpl(this._value, this._then);

  final PeriodicData _value;
  // ignore: unused_field
  final $Res Function(PeriodicData) _then;

  @override
  $Res call({
    Object monthlyType = freezed,
    Object lastDay = freezed,
    Object frequency = freezed,
    Object every = freezed,
    Object daysOfWeeks = freezed,
    Object daysOfMonth = freezed,
    Object daysOfWeek = freezed,
  }) {
    return _then(_value.copyWith(
      monthlyType: monthlyType == freezed
          ? _value.monthlyType
          : monthlyType as MonthlyType,
      lastDay: lastDay == freezed ? _value.lastDay : lastDay as bool,
      frequency:
          frequency == freezed ? _value.frequency : frequency as Frequency,
      every: every == freezed ? _value.every : every as int,
      daysOfWeeks: daysOfWeeks == freezed
          ? _value.daysOfWeeks
          : daysOfWeeks as List<List<int>>,
      daysOfMonth: daysOfMonth == freezed
          ? _value.daysOfMonth
          : daysOfMonth as List<int>,
      daysOfWeek:
          daysOfWeek == freezed ? _value.daysOfWeek : daysOfWeek as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$PeriodicDataCopyWith<$Res>
    implements $PeriodicDataCopyWith<$Res> {
  factory _$PeriodicDataCopyWith(
          _PeriodicData value, $Res Function(_PeriodicData) then) =
      __$PeriodicDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {MonthlyType monthlyType,
      bool lastDay,
      Frequency frequency,
      int every,
      List<List<int>> daysOfWeeks,
      List<int> daysOfMonth,
      List<int> daysOfWeek});
}

/// @nodoc
class __$PeriodicDataCopyWithImpl<$Res> extends _$PeriodicDataCopyWithImpl<$Res>
    implements _$PeriodicDataCopyWith<$Res> {
  __$PeriodicDataCopyWithImpl(
      _PeriodicData _value, $Res Function(_PeriodicData) _then)
      : super(_value, (v) => _then(v as _PeriodicData));

  @override
  _PeriodicData get _value => super._value as _PeriodicData;

  @override
  $Res call({
    Object monthlyType = freezed,
    Object lastDay = freezed,
    Object frequency = freezed,
    Object every = freezed,
    Object daysOfWeeks = freezed,
    Object daysOfMonth = freezed,
    Object daysOfWeek = freezed,
  }) {
    return _then(_PeriodicData(
      monthlyType: monthlyType == freezed
          ? _value.monthlyType
          : monthlyType as MonthlyType,
      lastDay: lastDay == freezed ? _value.lastDay : lastDay as bool,
      frequency:
          frequency == freezed ? _value.frequency : frequency as Frequency,
      every: every == freezed ? _value.every : every as int,
      daysOfWeeks: daysOfWeeks == freezed
          ? _value.daysOfWeeks
          : daysOfWeeks as List<List<int>>,
      daysOfMonth: daysOfMonth == freezed
          ? _value.daysOfMonth
          : daysOfMonth as List<int>,
      daysOfWeek:
          daysOfWeek == freezed ? _value.daysOfWeek : daysOfWeek as List<int>,
    ));
  }
}

/// @nodoc
class _$_PeriodicData implements _PeriodicData {
  _$_PeriodicData(
      {this.monthlyType = MonthlyType.dayOfMonth,
      this.lastDay = false,
      @required this.frequency,
      @required this.every,
      this.daysOfWeeks,
      this.daysOfMonth,
      this.daysOfWeek})
      : assert(monthlyType != null),
        assert(lastDay != null),
        assert(frequency != null),
        assert(every != null);

  @JsonKey(defaultValue: MonthlyType.dayOfMonth)
  @override
  final MonthlyType monthlyType;
  @JsonKey(defaultValue: false)
  @override
  final bool lastDay;
  @override
  final Frequency frequency;
  @override
  final int every;
  @override
  final List<List<int>> daysOfWeeks;
  @override
  final List<int> daysOfMonth;
  @override
  final List<int> daysOfWeek;

  @override
  String toString() {
    return 'PeriodicData(monthlyType: $monthlyType, lastDay: $lastDay, frequency: $frequency, every: $every, daysOfWeeks: $daysOfWeeks, daysOfMonth: $daysOfMonth, daysOfWeek: $daysOfWeek)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PeriodicData &&
            (identical(other.monthlyType, monthlyType) ||
                const DeepCollectionEquality()
                    .equals(other.monthlyType, monthlyType)) &&
            (identical(other.lastDay, lastDay) ||
                const DeepCollectionEquality()
                    .equals(other.lastDay, lastDay)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)) &&
            (identical(other.every, every) ||
                const DeepCollectionEquality().equals(other.every, every)) &&
            (identical(other.daysOfWeeks, daysOfWeeks) ||
                const DeepCollectionEquality()
                    .equals(other.daysOfWeeks, daysOfWeeks)) &&
            (identical(other.daysOfMonth, daysOfMonth) ||
                const DeepCollectionEquality()
                    .equals(other.daysOfMonth, daysOfMonth)) &&
            (identical(other.daysOfWeek, daysOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.daysOfWeek, daysOfWeek)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(monthlyType) ^
      const DeepCollectionEquality().hash(lastDay) ^
      const DeepCollectionEquality().hash(frequency) ^
      const DeepCollectionEquality().hash(every) ^
      const DeepCollectionEquality().hash(daysOfWeeks) ^
      const DeepCollectionEquality().hash(daysOfMonth) ^
      const DeepCollectionEquality().hash(daysOfWeek);

  @override
  _$PeriodicDataCopyWith<_PeriodicData> get copyWith =>
      __$PeriodicDataCopyWithImpl<_PeriodicData>(this, _$identity);
}

abstract class _PeriodicData implements PeriodicData {
  factory _PeriodicData(
      {MonthlyType monthlyType,
      bool lastDay,
      @required Frequency frequency,
      @required int every,
      List<List<int>> daysOfWeeks,
      List<int> daysOfMonth,
      List<int> daysOfWeek}) = _$_PeriodicData;

  @override
  MonthlyType get monthlyType;
  @override
  bool get lastDay;
  @override
  Frequency get frequency;
  @override
  int get every;
  @override
  List<List<int>> get daysOfWeeks;
  @override
  List<int> get daysOfMonth;
  @override
  List<int> get daysOfWeek;
  @override
  _$PeriodicDataCopyWith<_PeriodicData> get copyWith;
}
