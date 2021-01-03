import 'config/text_config.dart';

///Frequency
///
///Type of frequency will be interacting.
enum Frequency {
  ///Daily frequency.
  daily,

  ///Weekly frequency.
  weekly,

  ///Monthly frequency.
  monthly,

  ///Yearly frequency.
  yearly
}

///MonthlyType
///
///Type of view for Month
enum MonthlyType {
  ///Day of month view type
  dayOfMonth,

  ///Day of week view type
  dayOfWeek,
}

///Extension for frequency
extension FrequencyExtension on Frequency {
  ///Get frequency text from enum
  String text(PeriodicTextConfig config) {
    switch (this) {
      case Frequency.daily:
        return config.daily;
      case Frequency.monthly:
        return config.monthly;
      case Frequency.weekly:
        return config.weekly;
      case Frequency.yearly:
        return config.yearly;
      default:
        return config.daily;
    }
  }

  ///Get amount text
  String amount(int amount, PeriodicTextConfig config) {
    final plural = amount > 1;

    switch (this) {
      case Frequency.daily:
        return plural ? config.dayPlural : config.daySingular;
      case Frequency.monthly:
        return plural ? config.monthPlural : config.monthSingular;
      case Frequency.weekly:
        return plural ? config.weekPlural : config.weekSingular;
      case Frequency.yearly:
        return plural ? config.yearPlural : config.yearSingular;
      default:
        return plural ? config.dayPlural : config.daySingular;
    }
  }
}

///Extension for frequency
extension MonthlyExtension on MonthlyType {
  ///Get frequency text from enum
  String text(PeriodicTextConfig config) {
    switch (this) {
      case MonthlyType.dayOfMonth:
        return config.dayOfMonth;
      case MonthlyType.dayOfWeek:
        return config.dayOfWeek;
      default:
        return config.dayOfMonth;
    }
  }
}
