import 'package:flutter/material.dart';

class HorizontalCalendar extends StatelessWidget {
  const HorizontalCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.horizontal,
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => index.isEven
                ? _HorizontalCalendarDay(index)
                : const SizedBox(
                    width: 12,
                  ),
          ),
        ),
      ],
    );
  }
}

class _HorizontalCalendarDay extends StatelessWidget {
  const _HorizontalCalendarDay(this.index) : daysFromToday = index ~/ 2;

  final int index;
  final int daysFromToday;

  @override
  Widget build(BuildContext context) {
    final date = DateTime.now().add(Duration(days: daysFromToday));

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          alignment: Alignment.center,
          width: 36,
          padding: const EdgeInsets.symmetric(vertical: 24),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(date.day.toString()),
        ),
        const SizedBox(height: 6),
        Text(date.weekdayName.substring(0, 3)),
      ],
    );
  }
}

extension on DateTime {
  String get weekdayName {
    final dayNames = {
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday',
      7: 'Sunday',
    };

    return dayNames[weekday]!;
  }
}
