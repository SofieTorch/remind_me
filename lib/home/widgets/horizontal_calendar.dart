import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remind_me/home/providers/date_provider.dart';
import 'package:remind_me/utils/datetime_extension.dart';

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

class _HorizontalCalendarDay extends ConsumerWidget {
  const _HorizontalCalendarDay(this.index) : daysFromToday = index ~/ 2;

  final int index;
  final int daysFromToday;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(dateProvider);
    final date = DateTime.now().add(Duration(days: daysFromToday));
    final isSelectedDate = _checkIfIsSelectedDay(selectedDate);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: () => ref.read(dateProvider.notifier).state = date,
          child: Container(
            alignment: Alignment.center,
            width: 36,
            padding: const EdgeInsets.symmetric(vertical: 24),
            decoration: BoxDecoration(
              color: isSelectedDate
                  ? Theme.of(context).colorScheme.primary
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: isSelectedDate
                    ? Colors.transparent
                    : Theme.of(context).colorScheme.primary,
              ),
            ),
            child: Text(date.day.toString()),
          ),
        ),
        const SizedBox(height: 6),
        Text(date.weekdayName.substring(0, 3)),
      ],
    );
  }

  bool _checkIfIsSelectedDay(DateTime selectedDate) {
    final differenceWithToday = selectedDate.difference(DateTime.now());
    return differenceWithToday.inDays == daysFromToday;
  }
}
