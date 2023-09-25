import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remind_me/home/providers/date_provider.dart';
import 'package:remind_me/home/widgets/horizontal_calendar.dart';
import 'package:remind_me/utils/datetime_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/logo.svg',
              height: 26,
              width: 26,
            ),
            const SizedBox(width: 4),
            Text(
              'Remind me',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Consumer(
              builder: (context, ref, child) {
                final selectedDate = ref.watch(dateProvider);

                return Row(
                  children: [
                    Text('${selectedDate.monthName} ${selectedDate.year}'),
                  ],
                );
              },
            ),
            const Flexible(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.only(top: 16, bottom: 24),
                child: HorizontalCalendar(),
              ),
            ),
            const Flexible(flex: 11, child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
