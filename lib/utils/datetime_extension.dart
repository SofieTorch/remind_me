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
}
