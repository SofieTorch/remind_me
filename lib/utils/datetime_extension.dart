extension DateTimeExtension on DateTime {
  String get weekdayName {
    final dayNames = {
      DateTime.monday: 'Monday',
      DateTime.tuesday: 'Tuesday',
      DateTime.wednesday: 'Wednesday',
      DateTime.thursday: 'Thursday',
      DateTime.friday: 'Friday',
      DateTime.saturday: 'Saturday',
      DateTime.sunday: 'Sunday',
    };

    return dayNames[weekday]!;
  }

  String get monthName {
    final monthNames = {
      DateTime.january: 'January',
      DateTime.february: 'February',
      DateTime.march: 'March',
      DateTime.april: 'April',
      DateTime.may: 'May',
      DateTime.june: 'June',
      DateTime.july: 'July',
      DateTime.august: 'August',
      DateTime.september: 'September',
      DateTime.october: 'October',
      DateTime.november: 'November',
      DateTime.december: 'December',
    };

    return monthNames[month]!;
  }

  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
      microsecond ?? this.microsecond,
    );
  }

  DateTime removeTime() {
    return copyWith(
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );
  }
}
