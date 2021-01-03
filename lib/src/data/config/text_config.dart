///PeriodicTextConfig
///
///Text to be shown in the widget.
class PeriodicTextConfig {
  ///Daily
  final String daily;

  ///Days of Month
  final String dayOfMonth;

  ///Days of Week
  final String dayOfWeek;

  ///Day plural
  final String dayPlural;

  ///Day singular
  final String daySingular;

  ///Every
  final String every;

  ///Frequency
  final String frequency;

  ///Monthly
  final String monthly;

  ///Month plural
  final String monthPlural;

  ///Month singular
  final String monthSingular;

  ///Weekly
  final String weekly;

  ///Week plural
  final String weekPlural;

  ///Week singular
  final String weekSingular;

  ///Yearly
  final String yearly;

  ///Year plural
  final String yearPlural;

  ///Year singular
  final String yearSingular;

  ///Default constructor for PeriodicTextConfig
  const PeriodicTextConfig({
    this.daily = 'Daily',
    this.dayOfMonth = 'Days',
    this.dayOfWeek = 'Weeks',
    this.dayPlural = 'Days',
    this.daySingular = 'Day',
    this.every = 'Every',
    this.frequency = 'Frequency',
    this.monthPlural = 'Months',
    this.monthSingular = 'Month',
    this.monthly = 'Monthly',
    this.weekPlural = 'Weeks',
    this.weekSingular = 'Week',
    this.weekly = 'Weekly',
    this.yearPlural = 'Years',
    this.yearSingular = 'Year',
    this.yearly = 'Yearly',
  });
}
