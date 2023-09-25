import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provides the date selected by the user, it could be selected
/// through scrolling or by clicking a specific date on the calendar.
final dateProvider = StateProvider<DateTime>((ref) => DateTime.now());
